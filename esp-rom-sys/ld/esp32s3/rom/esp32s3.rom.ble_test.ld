/*
 * SPDX-FileCopyrightText: 2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32s3.rom.ld for esp32s3
 *
 *
 * Generated from ./interface-esp32s3.yml md5sum 39c4ce259b11323b9404c192b01b712b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */


/* overwrite */
PROVIDE( lld_acl_rx_ind_handler = 0x40000000 );
PROVIDE( lld_con_estab_ind_handler = 0x40000000 );
PROVIDE( lld_adv_rep_ind_handler = 0x40000000 );
PROVIDE( llm_rpa_renew_to_handler = 0x40000000 );
PROVIDE( lld_scan_end_ind_handler = 0x40000000 );
PROVIDE( llm_scan_period_to_handler = 0x40000000 );

/* nvds */
PROVIDE( r_nvds_init = 0x40000000 );
PROVIDE( f_nvds_get = 0x40000000 );
PROVIDE( f_nvds_del = 0x40000000 );
PROVIDE( f_nvds_put = 0x40000000 );

/* controller flash */
PROVIDE( r_flash_init = 0x40000000 );
PROVIDE( r_flash_env_init = 0x40000000 );
PROVIDE( r_flash_env_deinit = 0x40000000 );

/* QA test */
PROVIDE( f_hci_vendor_ble_qa_test_cmd_handler = 0x40000000 );
