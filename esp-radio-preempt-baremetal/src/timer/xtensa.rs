use esp_hal::{trapframe::TrapFrame, xtensa_lx, xtensa_lx_rt};

use crate::task::task_switch;

// ESP32 uses Software1 (priority 3) for task switching, because it reserves
// Software0 for the Bluetooth stack.
const SW_INTERRUPT: u32 = if cfg!(esp32) { 1 << 29 } else { 1 << 7 };

pub(crate) fn setup_multitasking() {
    unsafe {
        let enabled = xtensa_lx::interrupt::disable();
        xtensa_lx::interrupt::enable_mask(
            SW_INTERRUPT
                | xtensa_lx_rt::interrupt::CpuInterruptLevel::Level2.mask()
                | xtensa_lx_rt::interrupt::CpuInterruptLevel::Level6.mask()
                | enabled,
        );
    }
}

pub(crate) fn disable_multitasking() {
    xtensa_lx::interrupt::disable_mask(SW_INTERRUPT);
}

#[allow(non_snake_case)]
#[esp_hal::ram]
#[cfg_attr(not(esp32), unsafe(export_name = "Software0"))]
#[cfg_attr(esp32, unsafe(export_name = "Software1"))]
fn task_switch_interrupt(context: &mut TrapFrame) {
    let intr = SW_INTERRUPT;
    unsafe { core::arch::asm!("wsr.intclear  {0}", in(reg) intr, options(nostack)) };

    task_switch(context);
}

#[inline]
pub(crate) fn yield_task() {
    let intr = SW_INTERRUPT;
    unsafe { core::arch::asm!("wsr.intset  {0}", in(reg) intr, options(nostack)) };
}

#[esp_hal::ram]
pub(crate) extern "C" fn timer_tick_handler(_context: &mut TrapFrame) {
    super::clear_timer_interrupt();

    // `task_switch` must be called on a single interrupt priority level only.
    // Because on ESP32 the software interrupt is triggered at priority 3 but
    // the timer interrupt is triggered at priority 1, we need to trigger the
    // software interrupt manually.
    if cfg!(esp32) {
        yield_task();
    } else {
        crate::task::task_switch(_context);
    }
}
