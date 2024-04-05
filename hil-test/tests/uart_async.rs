//! UART Test
//!
//! Folowing pins are used:
//! TX    GPIP2
//! RX    GPIO4
//!
//! Connect TX (GPIO2) and RX (GPIO4) pins.

#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]

use defmt_rtt as _;
use esp_backtrace as _;
use esp_hal::{
    clock::ClockControl, gpio::IO, peripherals::{Peripherals, TIMG0, UART0}, prelude::*, timer::TimerGroup, uart::{
        config::{Config, DataBits, Parity, StopBits},
        TxRxPins,
        Uart,
        UartRx,
        UartTx,
    }, Async
};

struct Context {
    tx: UartTx<'static, UART0, Async>,
    rx: UartRx<'static, UART0, Async>,
    clocks: esp_hal::clock::Clocks<'static>,
    timer: esp_hal::timer::TimerGroup<'static, TIMG0, esp_hal::Async>,
}

impl Context {
    pub fn init() -> Self {
        let peripherals = Peripherals::take();
        let system = peripherals.SYSTEM.split();
        let clocks = ClockControl::boot_defaults(system.clock_control).freeze();
        let io = IO::new(peripherals.GPIO, peripherals.IO_MUX);
        let pins = TxRxPins::new_tx_rx(
            io.pins.gpio2.into_push_pull_output(),
            io.pins.gpio4.into_floating_input(),
        );
        let config = Config {
            baudrate: 115200,
            data_bits: DataBits::DataBits8,
            parity: Parity::ParityNone,
            stop_bits: StopBits::STOP1,
        };

        let uart = Uart::new_async_with_config(peripherals.UART0, config, Some(pins), &clocks);
        let (tx, rx) = uart.split();

        let timer = TimerGroup::new_async(peripherals.TIMG0, &clocks);
        Context { rx, tx, clocks, timer }
    }
}


#[embassy_executor::task]
async fn test_send_receive(
    mut tx: UartTx<'static, UART0, Async>,
    mut rx: UartRx<'static, UART0, Async>,
) {
    const SEND: &[u8] = &*b"Hello ESP32";
    let mut buf = [0u8; SEND.len()];

    defmt::info!("here");
    // Drain the FIFO to clear previous message:
    tx.flush_async().await.unwrap();
    while rx.drain_fifo(&mut buf[..]) > 0 {}

    tx.write_async(&SEND).await.unwrap();
    tx.flush_async().await.unwrap();

    rx.read_async(&mut buf[..]).await.unwrap();
    assert_eq!(&buf[..], SEND);

    embedded_test::export::check_outcome(());
}



#[cfg(test)]
#[embedded_test::tests]
mod tests {
    use defmt::assert_eq;
    use static_cell::make_static;

    use super::*;

    #[init]
    fn init() -> Context {
        Context::init()
    }

    #[test]
    #[timeout(3)]
    fn test_send_receive(mut ctx: Context) {
        esp_hal::embassy::init(&ctx.clocks, ctx.timer);

        let executor = esp_hal::embassy::executor::thread::Executor::new();
        let executor = make_static!(executor);
        executor.run(|spawner|{
            spawner.spawn(super::test_send_receive(ctx.tx, ctx.rx)).ok();
        });
    }
}
