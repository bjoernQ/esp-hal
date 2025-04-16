//! # Over The Air Updates (OTA)
//!
//! ## Overview
//! The OTA update mechanism allows a device to update itself based on data
//! received while the normal firmware is running (for example, over Wi-Fi,
//! Bluetooth or Ethernet).
//!
//! OTA requires configuring the Partition Tables of the device with at least
//! two OTA app slot partitions (i.e., ota_0 and ota_1) and an OTA Data
//! Partition.
//!
//! The OTA operation functions write a new app firmware image to whichever OTA
//! app slot that is currently not selected for booting. Once the image is
//! verified, the OTA Data partition is updated to specify that this image
//! should be used for the next boot.
//!
//! Note: The prebuilt bootloaders provided by `espflash` _might not_ include
//! OTA support. In that case you need to built the bootloader yourself.
//!
//! The general procedure to change the active slot
//! - read the partition table [crate::partitions::read_partition_table]
//! - find the Data/Ota partition
//! - initialize [Ota]
//! - read the current slot, change the current slot
//!
//! For more details see <https://docs.espressif.com/projects/esp-idf/en/stable/esp32/api-reference/system/ota.html>
use crc::{Algorithm, Crc};
use embedded_storage::{ReadStorage, Storage};

use crate::partitions::FlashRegion;

// We run tests on the host which happens to be MacOS machines and mach-o
// doesn't like `link-sections`this way
#[cfg(not(target_os = "macos"))]
#[link_section = ".espressif.metadata"]
#[used]
#[export_name = "bootloader.FEATURE_OTA"]
static OTA_FEATURE: [u8; 11] = *b"FEATURE=OTA";

static ALGO: Algorithm<u32> = Algorithm {
    width: 32,
    poly: 0x04c11db7,
    init: 0,
    refin: true,
    refout: true,
    xorout: 0xffffffff,
    check: 0,
    residue: 0,
};

const SLOT0_DATA_OFFSET: u32 = 0x0000;
const SLOT1_DATA_OFFSET: u32 = 0x1000;

/// Representation of the current OTA slot.
#[derive(Debug, PartialEq, Eq, Clone, Copy, Hash, strum::FromRepr)]
#[cfg_attr(feature = "defmt", derive(defmt::Format))]
pub enum Slot {
    /// If there is a `firmware` app-partition it's used. Otherwise OTA-0
    None,
    /// OTA-0
    Slot0,
    /// OTA-1
    Slot1,
}

impl Slot {
    /// The slot represented as `usize`
    pub fn number(&self) -> usize {
        match self {
            Slot::None => 0,
            Slot::Slot0 => 0,
            Slot::Slot1 => 1,
        }
    }

    /// The next logical OTA slot
    pub fn next(&self) -> Slot {
        match self {
            Slot::None => Slot::Slot0,
            Slot::Slot0 => Slot::Slot1,
            Slot::Slot1 => Slot::Slot0,
        }
    }
}

/// OTA image states for checking operability of the app.
#[derive(Debug, PartialEq, Eq, Clone, Copy, Default, Hash, strum::FromRepr)]
#[cfg_attr(feature = "defmt", derive(defmt::Format))]
#[repr(u32)]
pub enum OtaImageState {
    /// Monitor the first boot. In bootloader this state is changed to
    /// `PendingVerify`.
    ///
    /// You want to set this state after activating a newly installed update.
    New           = 0x0,

    /// First boot for this app was. This state is usually only set by the
    /// bootloader.
    PendingVerify = 0x1,

    /// App was confirmed as workable. App can boot and work without limits.
    Valid         = 0x2,

    /// App was confirmed as non-workable.
    ///
    /// This app will not be selected to boot at all.
    Invalid       = 0x3,

    /// App could not confirm the workable or non-workable.
    ///
    /// In bootloader `PendingVerify` state will be changed to `Aborted` by the
    /// bootloader. This app will not selected to boot at all.
    Aborted       = 0x4,

    /// Undefined. App can boot and work without limits.
    #[default]
    Undefined     = 0xFFFFFFFF,
}

impl TryFrom<u32> for OtaImageState {
    type Error = crate::partitions::Error;

    fn try_from(value: u32) -> Result<Self, Self::Error> {
        OtaImageState::from_repr(value).ok_or(crate::partitions::Error::Invalid)
    }
}

/// OTA selection entry structure (two copies in the OTA data partition).
/// Size of 32 bytes is friendly to flash encryption.
#[derive(Debug, Clone, Copy, Default)]
#[cfg_attr(feature = "defmt", derive(defmt::Format))]
#[repr(C)]
struct OtaSelectEntry {
    /// OTA sequence number.
    pub ota_seq: u32,
    /// Sequence label (unused in the bootloader).
    pub seq_label: [u8; 20],
    /// OTA image state.
    pub ota_state: OtaImageState,
    /// CRC32 of the `ota_seq` field only.
    pub crc: u32,
}

impl OtaSelectEntry {
    fn as_bytes_mut(&mut self) -> &mut [u8; 0x20] {
        debug_assert!(core::mem::size_of::<Self>() == 32);
        unwrap!(
            unsafe { core::slice::from_raw_parts_mut(self as *mut _ as *mut u8, 0x20) }.try_into()
        )
    }
}

/// This is used to manipulate the OTA-data partition.
///
/// This will ever only deal with OTA-0 and OTA-1 since these two slots are
/// supported by the ESP-IDF bootloader.
#[derive(Debug)]
#[cfg_attr(feature = "defmt", derive(defmt::Format))]
pub struct Ota<'a, F>
where
    F: embedded_storage::Storage,
{
    flash: &'a mut FlashRegion<'a, F>,
}

impl<'a, F> Ota<'a, F>
where
    F: embedded_storage::Storage,
{
    /// Create a [Ota] instance from the given [FlashRegion]
    ///
    /// # Errors
    /// A [crate::partitions::Error::InvalidPartition] if the given flash region
    /// doesn't represent a Data/Ota partition or the size is unexpected
    pub fn new(flash: &'a mut FlashRegion<'a, F>) -> Result<Ota<'a, F>, crate::partitions::Error> {
        if flash.capacity() != 0x2000
            || flash.raw.partition_type()
                != crate::partitions::PartitionType::Data(
                    crate::partitions::DataPartitionSubType::Ota,
                )
        {
            return Err(crate::partitions::Error::InvalidPartition {
                expected_size: 0x2000,
                expected_type: crate::partitions::PartitionType::Data(
                    crate::partitions::DataPartitionSubType::Ota,
                ),
            });
        }

        Ok(Ota { flash })
    }

    /// Returns the currently active OTA-slot.
    pub fn current_slot(&mut self) -> Result<Slot, crate::partitions::Error> {
        let (seq0, seq1) = self.get_slot_seq()?;

        let slot = if seq0 == 0xffffffff && seq1 == 0xffffffff {
            Slot::None
        } else if seq0 == 0xffffffff {
            Slot::Slot1
        } else if seq1 == 0xffffffff {
            Slot::Slot0
        } else if seq0 > seq1 {
            Slot::Slot0
        } else {
            Slot::Slot1
        };

        Ok(slot)
    }

    fn get_slot_seq(&mut self) -> Result<(u32, u32), crate::partitions::Error> {
        let mut buffer1 = OtaSelectEntry::default();
        let mut buffer2 = OtaSelectEntry::default();
        self.flash.read(SLOT0_DATA_OFFSET, buffer1.as_bytes_mut())?;
        self.flash.read(SLOT1_DATA_OFFSET, buffer2.as_bytes_mut())?;
        let seq0 = buffer1.ota_seq;
        let seq1 = buffer2.ota_seq;
        Ok((seq0, seq1))
    }

    /// Sets the currently active OTA-slot.
    ///
    /// Passing [Slot::None] will reset the OTA-data
    pub fn set_current_slot(&mut self, slot: Slot) -> Result<(), crate::partitions::Error> {
        if slot == Slot::None {
            self.flash.write(SLOT0_DATA_OFFSET, &[0xffu8; 0x20])?;
            self.flash.write(SLOT1_DATA_OFFSET, &[0xffu8; 0x20])?;
            return Ok(());
        }

        let (seq0, seq1) = self.get_slot_seq()?;

        let new_seq = {
            if seq0 == 0xffffffff && seq1 == 0xffffffff {
                1
            } else if seq0 == 0xffffffff {
                seq1 + 1
            } else if seq1 == 0xffffffff {
                seq0 + 1
            } else {
                u32::max(seq0, seq1) + 1
            }
        };

        let crc = Crc::<u32>::new(&ALGO);
        let mut digest = crc.digest();
        digest.update(&new_seq.to_le_bytes());
        let checksum = digest.finalize();

        if slot == Slot::Slot0 {
            let mut buffer = OtaSelectEntry::default();
            self.flash.read(SLOT0_DATA_OFFSET, buffer.as_bytes_mut())?;
            buffer.ota_seq = new_seq;
            buffer.crc = checksum;
            self.flash.write(SLOT0_DATA_OFFSET, buffer.as_bytes_mut())?;
        } else {
            let mut buffer = OtaSelectEntry::default();
            self.flash.read(SLOT1_DATA_OFFSET, buffer.as_bytes_mut())?;
            buffer.ota_seq = new_seq;
            buffer.crc = checksum;
            self.flash.write(SLOT1_DATA_OFFSET, buffer.as_bytes_mut())?;
        }

        Ok(())
    }

    /// Set the [OtaImageState] of the currently selected slot.
    ///
    /// # Errors
    /// A [crate::partitions::Error::InvalidState] if the currently selected
    /// slot is [Slot::None]
    pub fn set_current_ota_state(
        &mut self,
        state: OtaImageState,
    ) -> Result<(), crate::partitions::Error> {
        match self.current_slot()? {
            Slot::None => Err(crate::partitions::Error::InvalidState),
            Slot::Slot0 => {
                let mut buffer = OtaSelectEntry::default();
                self.flash.read(SLOT0_DATA_OFFSET, buffer.as_bytes_mut())?;
                buffer.ota_state = state;
                self.flash.write(SLOT0_DATA_OFFSET, buffer.as_bytes_mut())?;
                Ok(())
            }
            Slot::Slot1 => {
                let mut buffer = OtaSelectEntry::default();
                self.flash.read(SLOT1_DATA_OFFSET, buffer.as_bytes_mut())?;
                buffer.ota_state = state;
                self.flash.write(SLOT1_DATA_OFFSET, buffer.as_bytes_mut())?;
                Ok(())
            }
        }
    }

    /// Get the [OtaImageState] of the currently selected slot.
    ///
    /// # Errors
    /// A [crate::partitions::Error::InvalidState] if the currently selected
    /// slot is [Slot::None]
    pub fn current_ota_state(&mut self) -> Result<OtaImageState, crate::partitions::Error> {
        match self.current_slot()? {
            Slot::None => Err(crate::partitions::Error::InvalidState),
            Slot::Slot0 => {
                let mut buffer = OtaSelectEntry::default();
                self.flash.read(SLOT0_DATA_OFFSET, buffer.as_bytes_mut())?;
                Ok(buffer.ota_state)
            }
            Slot::Slot1 => {
                let mut buffer = OtaSelectEntry::default();
                self.flash.read(SLOT1_DATA_OFFSET, buffer.as_bytes_mut())?;
                Ok(buffer.ota_state)
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::partitions::PartitionEntry;

    struct MockFlash {
        data: [u8; 0x2000],
    }

    impl embedded_storage::Storage for MockFlash {
        fn write(&mut self, offset: u32, bytes: &[u8]) -> Result<(), Self::Error> {
            self.data[offset as usize..][..bytes.len()].copy_from_slice(bytes);
            Ok(())
        }
    }

    impl embedded_storage::ReadStorage for MockFlash {
        type Error = crate::partitions::Error;
        fn read(&mut self, offset: u32, buffer: &mut [u8]) -> Result<(), Self::Error> {
            let l = buffer.len();
            buffer[..l].copy_from_slice(&self.data[offset as usize..][..l]);
            Ok(())
        }

        fn capacity(&self) -> usize {
            unimplemented!()
        }
    }

    const PARTITION_RAW: [u8; 32] = [
        0xaa, 0x50, // MAGIC
        1,    // TYPE = DATA
        0,    // SUBTYPE = OTA
        0, 0, 0, 0, // OFFSET
        0, 0x20, 0, 0, // LEN (0x2000)
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, // LABEL
        0, 0, 0, 0, // FLAGS
    ];

    #[test]
    fn test_initial_state_and_next_slot() {
        let mut binary = PARTITION_RAW;

        let mock_entry = PartitionEntry {
            binary: &mut binary,
        };

        let mut mock_flash = MockFlash {
            data: [0xff; 0x2000],
        };

        let mut mock_region = FlashRegion {
            raw: &mock_entry,
            flash: &mut mock_flash,
        };

        let mut sut = Ota::new(&mut mock_region).unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::None);
        assert_eq!(
            sut.current_ota_state(),
            Err(crate::partitions::Error::InvalidState)
        );
        assert_eq!(
            sut.set_current_ota_state(OtaImageState::New),
            Err(crate::partitions::Error::InvalidState)
        );
        assert_eq!(
            sut.current_ota_state(),
            Err(crate::partitions::Error::InvalidState)
        );

        sut.set_current_slot(Slot::Slot0).unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::Slot0);
        assert_eq!(sut.current_ota_state(), Ok(OtaImageState::Undefined));

        assert_eq!(
            &[
                1u8, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 154, 152, 67, 71
            ],
            &mock_flash.data[0x0000..][..0x20],
        );

        assert_eq!(
            &[
                255u8, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
            ],
            &mock_flash.data[0x1000..][..0x20],
        );
    }

    #[test]
    fn test_slot0_valid_next_slot() {
        let mut binary = PARTITION_RAW;

        let mock_entry = PartitionEntry {
            binary: &mut binary,
        };

        let mut mock_flash = MockFlash {
            data: [0xff; 0x2000],
        };

        mock_flash.data[0x0000..][..0x20].copy_from_slice(&[
            1u8, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
            255, 255, 255, 255, 255, 255, 2, 0, 0, 0, 154, 152, 67, 71,
        ]);

        mock_flash.data[0x1000..][..0x20].copy_from_slice(&[
            255u8, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
            255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
        ]);

        let mut mock_region = FlashRegion {
            raw: &mock_entry,
            flash: &mut mock_flash,
        };

        let mut sut = Ota::new(&mut mock_region).unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::Slot0);
        assert_eq!(sut.current_ota_state(), Ok(OtaImageState::Valid));

        sut.set_current_slot(Slot::Slot1).unwrap();
        sut.set_current_ota_state(OtaImageState::New).unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::Slot1);
        assert_eq!(sut.current_ota_state(), Ok(OtaImageState::New));

        assert_eq!(
            &[
                1, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 2, 0, 0, 0, 154, 152, 67, 71
            ],
            &mock_flash.data[0x0000..][..0x20],
        );

        assert_eq!(
            &[
                2, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 116, 55, 246, 85
            ],
            &mock_flash.data[0x1000..][..0x20],
        );
    }

    #[test]
    fn test_slot1_new_next_slot() {
        let mut binary = PARTITION_RAW;

        let mock_entry = PartitionEntry {
            binary: &mut binary,
        };

        let mut mock_flash = MockFlash {
            data: [0xff; 0x2000],
        };

        mock_flash.data[0x0000..][..0x20].copy_from_slice(&[
            1, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
            255, 255, 255, 255, 255, 2, 0, 0, 0, 154, 152, 67, 71,
        ]);

        mock_flash.data[0x1000..][..0x20].copy_from_slice(&[
            2, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
            255, 255, 255, 255, 255, 0, 0, 0, 0, 116, 55, 246, 85,
        ]);

        let mut mock_region = FlashRegion {
            raw: &mock_entry,
            flash: &mut mock_flash,
        };

        let mut sut = Ota::new(&mut mock_region).unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::Slot1);
        assert_eq!(sut.current_ota_state(), Ok(OtaImageState::New));

        sut.set_current_slot(Slot::Slot0).unwrap();
        sut.set_current_ota_state(OtaImageState::PendingVerify)
            .unwrap();
        assert_eq!(sut.current_slot().unwrap(), Slot::Slot0);
        assert_eq!(sut.current_ota_state(), Ok(OtaImageState::PendingVerify));

        assert_eq!(
            &[
                3, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 1, 0, 0, 0, 17, 80, 74, 237
            ],
            &mock_flash.data[0x0000..][..0x20],
        );

        assert_eq!(
            &[
                2, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255,
                255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 116, 55, 246, 85
            ],
            &mock_flash.data[0x1000..][..0x20],
        );
    }

    #[test]
    fn test_ota_slot_next() {
        assert_eq!(Slot::None.next(), Slot::Slot0);
        assert_eq!(Slot::Slot0.next(), Slot::Slot1);
        assert_eq!(Slot::Slot1.next(), Slot::Slot0);
    }
}
