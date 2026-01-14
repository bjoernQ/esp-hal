/*
 * SPDX-FileCopyrightText: 2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32c6.rom.net80211.ld for esp32c6
 *
 *
 * Generated from ./target/esp32c6/interface-esp32c6.yml md5sum 06c13e133e0743d09b87aba30d3e213b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group rom_net80211
 ***************************************/

/* Functions */
PROVIDE( esp_net80211_rom_version_get = 0x40000b4c );
PROVIDE( ampdu_dispatch = 0x40000b50 );
PROVIDE( ampdu_dispatch_all = 0x40000b54 );
PROVIDE( ampdu_dispatch_as_many_as_possible = 0x40000b58 );
PROVIDE( ampdu_dispatch_movement = 0x40000b5c );
PROVIDE( ampdu_dispatch_upto = 0x40000b60 );
PROVIDE( chm_is_at_home_channel = 0x40000b64 );
PROVIDE( cnx_node_is_existing = 0x40000b68 );
PROVIDE( cnx_node_search = 0x40000b6c );
PROVIDE( ic_ebuf_recycle_rx = 0x40000b70 );
PROVIDE( ic_ebuf_recycle_tx = 0x40000b74 );
PROVIDE( ic_reset_rx_ba = 0x40000b78 );
PROVIDE( ieee80211_align_eb = 0x40000b7c );
/*ieee80211_ampdu_reorder = 0x40000b80;*/
PROVIDE( ieee80211_ampdu_start_age_timer = 0x40000b84 );
/*ieee80211_encap_esfbuf = 0x40000b88;*/
PROVIDE( ieee80211_is_tx_allowed = 0x40000b8c );
PROVIDE( ieee80211_output_pending_eb = 0x40000b90 );
/*ieee80211_output_process = 0x40000b94;*/
//ieee80211_set_tx_desc = 0x40000b98;
//sta_input = 0x40000b9c;
PROVIDE( wifi_get_macaddr = 0x40000ba0 );
PROVIDE( wifi_rf_phy_disable = 0x40000ba4 );
PROVIDE( wifi_rf_phy_enable = 0x40000ba8 );
PROVIDE( ic_ebuf_alloc = 0x40000bac );
/*ieee80211_classify = 0x40000bb0;*/
PROVIDE( ieee80211_copy_eb_header = 0x40000bb4 );
PROVIDE( ieee80211_recycle_cache_eb = 0x40000bb8 );
PROVIDE( ieee80211_search_node = 0x40000bbc );
PROVIDE( ieee80211_crypto_encap = 0x40000bc0 );
/* ieee80211_crypto_decap = 0x40000bc4; */
PROVIDE( ieee80211_decap = 0x40000bc8 );
PROVIDE( wifi_is_started = 0x40000bcc );
PROVIDE( ieee80211_gettid = 0x40000bd0 );
//ieee80211_encap_esfbuf_htc = 0x40000bd4;
/* Data (.data, .bss, .rodata) */
PROVIDE( net80211_funcs = 0x4087ffac );
PROVIDE( g_scan = 0x4087ffa8 );
PROVIDE( g_chm = 0x4087ffa4 );
PROVIDE( g_ic_ptr = 0x4087ffa0 );
PROVIDE( g_hmac_cnt_ptr = 0x4087ff9c );
PROVIDE( g_tx_cacheq_ptr = 0x4087ff98 );
PROVIDE( s_netstack_free = 0x4087ff94 );
PROVIDE( mesh_rxcb = 0x4087ff90 );
PROVIDE( sta_rxcb = 0x4087ff8c );
PROVIDE( g_itwt_fid = 0x4087ff88 );
PROVIDE( esp_test_tx_addba_request = 0x4087ff84 );
