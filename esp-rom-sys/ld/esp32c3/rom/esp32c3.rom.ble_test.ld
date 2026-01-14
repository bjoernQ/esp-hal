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


/* overwrite */
PROVIDE( lld_acl_rx_ind_handler = 0 );
PROVIDE( lld_con_estab_ind_handler = 0 );
PROVIDE( lld_adv_rep_ind_handler = 0 );
PROVIDE( llm_rpa_renew_to_handler = 0 );
PROVIDE( lld_scan_end_ind_handler = 0 );
PROVIDE( llm_scan_period_to_handler = 0 );

/* nvds */
PROVIDE( r_nvds_init = 0 );
PROVIDE( f_nvds_get = 0 );
PROVIDE( f_nvds_del = 0 );
PROVIDE( f_nvds_put = 0 );

/* controller flash */
PROVIDE( r_flash_init = 0 );
PROVIDE( r_flash_env_init = 0 );
PROVIDE( r_flash_env_deinit = 0 );

/* QA test */
PROVIDE( f_hci_vendor_ble_qa_test_cmd_handler = 0 );
