//! TWAI test

//% CHIPS: esp32 esp32c3 esp32c6 esp32h2 esp32s2 esp32s3
//% FEATURES: unstable

#![no_std]
#![no_main]

use embedded_can::Frame;
use esp_hal::{
    Blocking,
    twai::{self, EspTwaiFrame, StandardId, TwaiMode, filter::SingleStandardFilter},
};
use hil_test as _;
use nb::block;

esp_bootloader_esp_idf::esp_app_desc!();

struct Context {
    twai: twai::Twai<'static, Blocking>,
}

#[cfg(test)]
#[embedded_test::tests(default_timeout = 3)]
mod tests {
    use super::*;

    #[init]
    fn init() -> Context {
        let peripherals = esp_hal::init(esp_hal::Config::default());

        let (loopback_pin, _) = hil_test::common_test_pins!(peripherals);

        let (rx, tx) = unsafe { loopback_pin.split() };

        let mut config = twai::TwaiConfiguration::new(
            peripherals.TWAI0,
            rx,
            tx,
            twai::BaudRate::B1000K,
            TwaiMode::SelfTest,
        );

        config.set_filter(SingleStandardFilter::new(
            b"00000000000",
            b"x",
            [b"xxxxxxxx", b"xxxxxxxx"],
        ));

        let twai = config.start();

        Context { twai }
    }

    #[test]
    fn test_send_receive(mut ctx: Context) {
        let frame = EspTwaiFrame::new_self_reception(StandardId::ZERO, &[1, 2, 3]).unwrap();
        block!(ctx.twai.transmit(&frame)).unwrap();

        let frame = block!(ctx.twai.receive()).unwrap();

        assert_eq!(frame.data(), &[1, 2, 3])
    }
}
