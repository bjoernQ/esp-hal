use std::error::Error;

use esp_config::generate_config_from_yaml_definition;
use esp_metadata_generated::Chip;

#[macro_export]
macro_rules! assert_unique_features {
    ($($feature:literal),+ $(,)?) => {
        assert!(
            (0 $(+ cfg!(feature = $feature) as usize)+ ) <= 1,
            "Exactly zero or one of the following features must be enabled: {}",
            [$($feature),+].join(", ")
        );
    };
}

fn main() -> Result<(), Box<dyn Error>> {
    // Load the configuration file for the configured device:
    let chip = Chip::from_cargo_feature()?;

    // Define all necessary configuration symbols for the configured device:
    chip.define_cfgs();

    // If some library required unstable make sure unstable is actually enabled.
    if cfg!(feature = "requires-unstable") && !cfg!(feature = "unstable") {
        panic!(
            "\n\nThe `unstable` feature is required by a dependent crate but is not enabled.\n\n"
        );
    }

    if (cfg!(feature = "ble")
        || cfg!(feature = "coex")
        || cfg!(feature = "csi")
        || cfg!(feature = "esp-now")
        || cfg!(feature = "ieee802154")
        || cfg!(feature = "smoltcp")
        || cfg!(feature = "sniffer"))
        && !cfg!(feature = "unstable")
    {
        panic!(
            "\n\nThe `unstable` feature was not provided, but is required for the following features: `ble`, `coex`, `csi`, `esp-now`, `ieee802154`, `smoltcp`, `sniffer`.\n\n"
        )
    }

    // Log and defmt are mutually exclusive features. The main technical reason is
    // that allowing both would make the exact panicking behaviour a fragile
    // implementation detail.
    assert_unique_features!("log-04", "defmt");

    assert!(
        !cfg!(feature = "ble") || chip.contains("bt"),
        r#"

        BLE is not supported on this target.

        "#
    );
    assert!(
        !cfg!(feature = "wifi") || chip.contains("wifi"),
        r#"

        WiFi is not supported on this target.

        "#
    );
    assert!(
        !cfg!(feature = "ieee802154") || chip.contains("ieee802154"),
        r#"

        IEEE 802.15.4 is not supported on this target.

        "#
    );

    if let Ok(level) = std::env::var("OPT_LEVEL")
        && level != "2"
        && level != "3"
        && level != "s"
    {
        let message = format!(
            "esp-radio should be built with optimization level 2, 3 or s - yours is {level}.
                See https://github.com/esp-rs/esp-radio",
        );
        print_warning(message);
    }

    println!("cargo:rustc-check-cfg=cfg(coex)");
    #[cfg(feature = "coex")]
    {
        assert!(
            chip.contains("wifi") && chip.contains("bt"),
            r#"

            WiFi/Bluetooth coexistence is not supported on this target.

            "#
        );

        #[cfg(all(feature = "wifi", feature = "ble"))]
        println!("cargo:rustc-cfg=coex");

        #[cfg(not(feature = "wifi"))]
        println!("cargo:warning=coex is enabled but wifi is not");

        #[cfg(not(feature = "ble"))]
        println!("cargo:warning=coex is enabled but ble is not");
    }

    // emit config
    //
    // keep the defaults aligned with `esp_wifi_sys::include::*` e.g.
    // `esp_wifi_sys::include::CONFIG_ESP_WIFI_STATIC_RX_BUFFER_NUM`
    println!("cargo:rerun-if-changed=./esp_config.yml");
    let cfg_yaml = std::fs::read_to_string("./esp_config.yml")
        .expect("Failed to read esp_config.yml for esp-radio");
    generate_config_from_yaml_definition(&cfg_yaml, true, true, Some(chip)).unwrap();

    Ok(())
}

fn print_warning(message: impl core::fmt::Display) {
    println!("cargo:warning={message}");
}
