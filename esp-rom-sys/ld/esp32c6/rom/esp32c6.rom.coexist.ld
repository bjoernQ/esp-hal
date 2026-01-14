/*
 * SPDX-FileCopyrightText: 2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32c6.rom.coexist.ld for esp32c6
 *
 *
 * Generated from ./target/esp32c6/interface-esp32c6.yml md5sum 06c13e133e0743d09b87aba30d3e213b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group rom_coexist
 ***************************************/

/* Functions */
PROVIDE( esp_coex_rom_version_get = 0x40000afc );
PROVIDE( coex_bt_release = 0x40000b00 );
PROVIDE( coex_bt_request = 0x40000b04 );
PROVIDE( coex_core_ble_conn_dyn_prio_get = 0x40000b08 );
/*coex_core_event_duration_get = 0x40000b0c;*/
PROVIDE( coex_core_pti_get = 0x40000b10 );
PROVIDE( coex_core_release = 0x40000b14 );
PROVIDE( coex_core_request = 0x40000b18 );
PROVIDE( coex_core_status_get = 0x40000b1c );
/*coex_core_timer_idx_get = 0x40000b20;*/
PROVIDE( coex_event_duration_get = 0x40000b24 );
PROVIDE( coex_hw_timer_disable = 0x40000b28 );
PROVIDE( coex_hw_timer_enable = 0x40000b2c );
PROVIDE( coex_hw_timer_set = 0x40000b30 );
PROVIDE( coex_schm_interval_set = 0x40000b34 );
PROVIDE( coex_schm_lock = 0x40000b38 );
PROVIDE( coex_schm_unlock = 0x40000b3c );
/*coex_status_get = 0x40000b40;*/
PROVIDE( coex_wifi_release = 0x40000b44 );
PROVIDE( esp_coex_ble_conn_dynamic_prio_get = 0x40000b48 );
/* Data (.data, .bss, .rodata) */
PROVIDE( coex_env_ptr = 0x4087ffc4 );
PROVIDE( coex_pti_tab_ptr = 0x4087ffc0 );
PROVIDE( coex_schm_env_ptr = 0x4087ffbc );
PROVIDE( coexist_funcs = 0x4087ffb8 );
PROVIDE( g_coa_funcs_p = 0x4087ffb4 );
PROVIDE( g_coex_param_ptr = 0x4087ffb0 );
