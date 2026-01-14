/*
 * SPDX-FileCopyrightText: 2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32c3.rom.ld for esp32c3
 *
 *
 * Generated from ./interface-esp32c3.yml md5sum 93b28a9e1fe42d212018eb4336849208
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/* SW CCA */
PROVIDE( r_lld_cca_con_evt_start_handle = 0 );
PROVIDE( r_lld_hw_cca_end_isr = 0 );
PROVIDE( r_lld_hw_cca_isr_eco = 0 );
PROVIDE( r_lld_cca_bb_sync_found_handle = 0 );
PROVIDE( r_lld_cca_data_reset = 0 );
PROVIDE( r_lld_cca_sw_init = 0 );
r_lld_cca_con_evt_end_handle  = 0;
PROVIDE( r_lld_cca_alloc = 0 );
PROVIDE( r_lld_cca_sw_alloc = 0 );
PROVIDE( r_lld_cca_sw_free = 0 );
PROVIDE( r_lld_cca_free = 0 );
PROVIDE( r_cca_init = 0 );
PROVIDE( r_lld_hw_cca_evt_handler = 0 );
PROVIDE( r_lld_sw_cca_evt_handler = 0 );
PROVIDE( r_ble_sw_cca_check_isr = 0 );
