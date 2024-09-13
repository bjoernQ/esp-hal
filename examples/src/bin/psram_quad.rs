//! This shows how to use PSRAM as heap-memory via esp-alloc
//!
//! You need an ESP32, ESP32-S2 or ESP32-S3 with at least 2 MB of PSRAM memory.

//% CHIPS: esp32 esp32s2 esp32s3
//% FEATURES: psram-2m

#![no_std]
#![no_main]

extern crate alloc;

use alloc::{string::String, vec::Vec};

use esp_alloc as _;
use esp_backtrace as _;
use esp_hal::{prelude::*, psram};
use esp_println::println;

fn init_psram_heap() {
    unsafe {
        esp_alloc::HEAP.add_region(esp_alloc::HeapRegion::new(
            psram::psram_vaddr_start() as *mut u8,
            psram::PSRAM_BYTES,
            esp_alloc::MemoryCapability::External.into(),
        ));
    }
}

#[cfg(is_not_release)]
compile_error!("PSRAM example must be built in release mode!");

#[inline(never)]
#[no_mangle]
extern "C" fn foox(x: u32) -> u32 {
    x + 42
}


#[entry]
fn main() -> ! {
    println!("here we are");

    esp_println::logger::init_logger_from_env();

    let peripherals = esp_hal::init(esp_hal::Config::default());

    
    psram::init_psram(peripherals.PSRAM);
    //init_psram_heap();

    println!("done init");
    
    println!("mapping");

    let ptr = 0x600C5000 as *mut u32;
    for i in 0..(0x800/4) {
        unsafe { println!("{:03} => {:x}", i, ptr.add(i).read_volatile()); 

        if ptr.add(i).read_volatile() == 0x4000 {
            break;
        }
    }
    }

    // 0x42800000
    // 0x3C000000

    // + 0x20000 since two pages of flash are mapped 🛑 but this depends on the size of the application!!! that's bad

    unsafe {
        let ptr = 0x3C020000 as *mut u32;
        for i in 0..12000 {
            ptr.add(i).write_volatile((i+10) as u32);
        }

        for i in 0..12000 {
            if ptr.add(i).read_volatile() != (i+10) as u32 {
                println!("Nope @{i} = {:x}", ptr.add(i).read_volatile());
            }
        }
    }
    println!("done");

    unsafe {
        let ptr = foox as *mut u32;
        println!("{:x}", ptr.add(0).read_volatile());
        println!("{:x}", ptr.add(1).read_volatile());
        println!("{:x}", ptr.add(2).read_volatile());
        println!("{:x}", ptr.add(3).read_volatile());
    }

    unsafe {
        let ptr = 0x42020000 as *mut u32;
        // apparently writing doesn't work??? but writing to via DBUS did
        // WHY???? and also we would need to flush the cache after writing via DBUS

        // see https://gist.github.com/igrr/ef5a3ad9f5fbf835f06c88b6b36defcc#file-esp32s3-psram-alloc-exec-c-L51

        // for i in 0..12000 {
        //    ptr.add(i).write_volatile((i + 10) as u32);
        // }

        for i in 0..12000 {
            if ptr.add(i).read_volatile() != (i + 10) as u32 {
                println!("Nope @{i} = {:x}", ptr.add(i).read_volatile());
            }
        }
    }
    println!("done");


    unsafe {
        let ptr = 0x3C020000 as *mut u32;
        ptr.add(0).write_volatile(0x22004136);
        ptr.add(1).write_volatile(0xf01d2ac2);

        // ok ok .... we need to flush?
        let ptr = 0x3C020008 as *mut u32;
        for i in 0..12000 {
            ptr.add(i).write_volatile((i+10) as u32);
        }


        println!();
        unsafe {
            let ptr = 0x3C020000 as *mut u32;
            println!("{:x}", ptr.add(0).read_volatile());
            println!("{:x}", ptr.add(1).read_volatile());
        }

        println!();
        unsafe {
            let ptr = 0x42020000 as *mut u32;
            println!("{:x}", ptr.add(0).read_volatile());
            println!("{:x}", ptr.add(1).read_volatile());
        }


        let foo = 0x42020000;




        let foo: extern "C" fn(u32) -> u32 = core::mem::transmute(foo);

        println!("tada .... calling FOO in PSRAM returns {}", foo(0));
        println!("tada .... calling FOO in PSRAM returns {}", foo(23));
    }


    // println!("Going to access PSRAM");
    // let mut large_vec = Vec::<u32>::with_capacity(500 * 1024 / 4);

    // for i in 0..(500 * 1024 / 4) {
    //     large_vec.push((i & 0xff) as u32);
    // }

    // println!("vec size = {} bytes", large_vec.len() * 4);
    // println!("vec address = {:p}", large_vec.as_ptr());
    // println!("vec[..100] = {:?}", &large_vec[..100]);

    // let string = String::from("A string allocated in PSRAM");
    // println!("'{}' allocated at {:p}", &string, string.as_ptr());

    // println!("done");

    loop {}
}
