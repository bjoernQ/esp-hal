#![cfg_attr(docsrs, procmacros::doc_replace)]
//! # Software Interrupts
//!
//! The [`SoftwareInterruptControl`] struct gives access to the available
//! software interrupts.
//!
//! The [`SoftwareInterrupt`] struct allows raising or resetting software
//! interrupts using the [`raise()`][SoftwareInterrupt::raise] and
//! [`reset()`][SoftwareInterrupt::reset] methods.
//!
//! ## Examples
//!
//! ```rust, no_run
//! # {before_snippet}
//! let sw_ints = SoftwareInterruptControl::new(peripherals.SW_INTERRUPT);
//!
//! // Take the interrupt you want to use.
//! let mut int0 = sw_ints.software_interrupt0;
//!
//! // Set up the interrupt handler. Do this in a critical section so the global
//! // contains the interrupt object before the interrupt is triggered.
//! critical_section::with(|cs| {
//!     int0.set_interrupt_handler(swint0_handler);
//!     SWINT0.borrow_ref_mut(cs).replace(int0);
//! });
//! # {after_snippet}
//!
//! # use core::cell::RefCell;
//! # use critical_section::Mutex;
//! # use esp_hal::interrupt::software::{SoftwareInterrupt, SoftwareInterruptControl};
//! // ... somewhere outside of your main function
//!
//! // Define a shared handle to the software interrupt.
//! static SWINT0: Mutex<RefCell<Option<SoftwareInterrupt<0>>>> = Mutex::new(RefCell::new(None));
//!
//! #[handler]
//! fn swint0_handler() {
//!     println!("SW interrupt0 handled");
//!
//!     // Clear the interrupt request.
//!     critical_section::with(|cs| {
//!         if let Some(swint) = SWINT0.borrow_ref(cs).as_ref() {
//!             swint.reset();
//!         }
//!     });
//! }
//! ```

use core::marker::PhantomData;

use crate::interrupt::{InterruptConfigurable, InterruptHandler};

/// A software interrupt can be triggered by software.
#[non_exhaustive]
pub struct SoftwareInterrupt<'d, const NUM: u8> {
    _lifetime: PhantomData<&'d mut ()>,
}

impl<const NUM: u8> SoftwareInterrupt<'_, NUM> {
    /// Unsafely create an instance of this peripheral out of thin air.
    ///
    /// # Safety
    ///
    /// You must ensure that you're only using one instance of this type at a
    /// time.
    #[inline]
    pub unsafe fn steal() -> Self {
        Self {
            _lifetime: PhantomData,
        }
    }

    /// Creates a new peripheral reference with a shorter lifetime.
    ///
    /// Use this method if you would like to keep working with the peripheral
    /// after you dropped the driver that consumes this.
    ///
    /// See [Peripheral singleton] section for more information.
    ///
    /// [Peripheral singleton]: crate#peripheral-singletons
    pub fn reborrow(&mut self) -> SoftwareInterrupt<'_, NUM> {
        unsafe { SoftwareInterrupt::steal() }
    }

    /// Sets the interrupt handler for this software-interrupt
    #[instability::unstable]
    pub fn set_interrupt_handler(&mut self, handler: InterruptHandler) {
        let interrupt = match NUM {
            0 => crate::peripherals::Interrupt::FROM_CPU_INTR0,
            1 => crate::peripherals::Interrupt::FROM_CPU_INTR1,
            2 => crate::peripherals::Interrupt::FROM_CPU_INTR2,
            3 => crate::peripherals::Interrupt::FROM_CPU_INTR3,
            _ => unreachable!(),
        };

        for core in crate::system::Cpu::other() {
            crate::interrupt::disable(core, interrupt);
        }
        unsafe { crate::interrupt::bind_interrupt(interrupt, handler.handler()) };
        unwrap!(crate::interrupt::enable(interrupt, handler.priority()));
    }

    /// Trigger this software-interrupt
    pub fn raise(&self) {
        cfg_if::cfg_if! {
            if #[cfg(any(esp32c6, esp32h2))] {
                let system = crate::peripherals::INTPRI::regs();
            } else {
                let system = crate::peripherals::SYSTEM::regs();
            }
        }

        let reg = match NUM {
            0 => system.cpu_intr_from_cpu(0),
            1 => system.cpu_intr_from_cpu(1),
            2 => system.cpu_intr_from_cpu(2),
            3 => system.cpu_intr_from_cpu(3),
            _ => unreachable!(),
        };

        reg.write(|w| w.cpu_intr().set_bit());
    }

    /// Resets this software-interrupt
    pub fn reset(&self) {
        cfg_if::cfg_if! {
            if #[cfg(any(esp32c6, esp32h2))] {
                let system = crate::peripherals::INTPRI::regs();
            } else {
                let system = crate::peripherals::SYSTEM::regs();
            }
        }

        let reg = match NUM {
            0 => system.cpu_intr_from_cpu(0),
            1 => system.cpu_intr_from_cpu(1),
            2 => system.cpu_intr_from_cpu(2),
            3 => system.cpu_intr_from_cpu(3),
            _ => unreachable!(),
        };

        reg.write(|w| w.cpu_intr().clear_bit());
    }
}

impl<const NUM: u8> crate::private::Sealed for SoftwareInterrupt<'_, NUM> {}

impl<const NUM: u8> InterruptConfigurable for SoftwareInterrupt<'_, NUM> {
    fn set_interrupt_handler(&mut self, handler: crate::interrupt::InterruptHandler) {
        SoftwareInterrupt::set_interrupt_handler(self, handler);
    }
}

/// This gives access to the available software interrupts.
///
/// This struct contains several instances of software interrupts that can be
/// used for signaling between different parts of a program or system. Each
/// interrupt is identified by an index (0 to 3).
#[cfg_attr(
    multi_core,
    doc = r#"

Please note: Software interrupt 3 is reserved
for inter-processor communication when using
`esp-hal-embassy`."#
)]
#[non_exhaustive]
pub struct SoftwareInterruptControl<'d> {
    /// Software interrupt 0.
    pub software_interrupt0: SoftwareInterrupt<'d, 0>,
    /// Software interrupt 1.
    pub software_interrupt1: SoftwareInterrupt<'d, 1>,
    /// Software interrupt 2. Not available when using esp-radio's builtin
    /// scheduler on RISC-V architectures.
    #[cfg(not(all(feature = "__esp_radio_builtin_scheduler", riscv)))]
    pub software_interrupt2: SoftwareInterrupt<'d, 2>,
    #[cfg(not(all(feature = "__esp_hal_embassy", multi_core)))]
    /// Software interrupt 3. Not available when using `esp-hal-embassy`,
    /// on multi-core systems.
    pub software_interrupt3: SoftwareInterrupt<'d, 3>,
}

impl<'d> SoftwareInterruptControl<'d> {
    /// Create a new instance of the software interrupt control.
    pub fn new(_peripheral: crate::peripherals::SW_INTERRUPT<'d>) -> Self {
        SoftwareInterruptControl {
            software_interrupt0: SoftwareInterrupt {
                _lifetime: PhantomData,
            },
            software_interrupt1: SoftwareInterrupt {
                _lifetime: PhantomData,
            },
            #[cfg(not(all(feature = "__esp_radio_builtin_scheduler", riscv)))]
            software_interrupt2: SoftwareInterrupt {
                _lifetime: PhantomData,
            },
            #[cfg(not(all(feature = "__esp_hal_embassy", multi_core)))]
            software_interrupt3: SoftwareInterrupt {
                _lifetime: PhantomData,
            },
        }
    }
}
