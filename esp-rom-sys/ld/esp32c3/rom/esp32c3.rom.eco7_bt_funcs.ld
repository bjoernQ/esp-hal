/*
 * SPDX-FileCopyrightText: 2023-2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/***************************************
 Group eco7_bluetooth
 ***************************************/

/* Functions */
PROVIDE( r_lld_con_count_get = 0x40001c48 );
PROVIDE( r_lld_update_con_offset = 0x40001c4c );
PROVIDE( r_lld_con_update_last_clock = 0x40001c50 );
PROVIDE( r_lld_con_llcp_ind_info_clear = 0x40001c54 );
PROVIDE( r_lld_con_update_terminte_info_init = 0x40001c58 );
PROVIDE( r_lld_con_terminate_max_evt_update = 0x40001c5c );
PROVIDE( r_llc_pref_param_compute_eco = 0x40001ce8 );
PROVIDE( r_llc_hci_con_upd_info_send_eco = 0x40001cec );
PROVIDE( r_llc_rem_encrypt_proc_continue_eco = 0x40001cf0 );
PROVIDE( r_lld_ext_adv_dynamic_aux_pti_process_eco = 0x40001cfc );
PROVIDE( r_lld_adv_start_eco = 0x40001d04 );
PROVIDE( r_lld_con_evt_canceled_cbk_eco = 0x40001d08 );
PROVIDE( r_lld_con_evt_time_update_eco = 0x40001d0c );
PROVIDE( r_lld_con_start_eco = 0x40001d10 );
PROVIDE( r_lld_con_frm_isr_eco = 0x40001d14 );
PROVIDE( r_lld_con_tx_eco = 0x40001d18 );
PROVIDE( r_lld_ext_scan_dynamic_pti_process_eco = 0x40001d28 );
PROVIDE( r_lld_scan_frm_eof_isr_eco = 0x40001d2c );
PROVIDE( r_lld_sync_start_eco = 0x40001d30 );
PROVIDE( r_lld_sync_insert_eco = 0x40001d34 );
PROVIDE( r_llm_adv_rep_flow_control_update_eco = 0x40001d38 );
PROVIDE( r_llm_env_adv_dup_filt_init_eco = 0x40001d3c );
PROVIDE( r_llm_env_adv_dup_filt_deinit_eco = 0x40001d40 );
PROVIDE( r_llm_adv_rep_flow_control_check_eco = 0x40001d44 );
PROVIDE( r_llm_scan_start_eco = 0x40001d48 );
PROVIDE( r_llm_update_duplicate_scan_count = 0x40001d4c );
PROVIDE( r_llc_hci_command_handler_pre = 0x40001d50 );
PROVIDE( r_llc_hci_command_handler_get = 0x40001d54 );
PROVIDE( r_llc_hci_command_handler_search = 0x40001d58 );
PROVIDE( r_llc_llcp_pdu_handler_pre = 0x40001d60 );
PROVIDE( r_llc_llcp_pdu_handler_end = 0x40001d64 );
PROVIDE( r_llc_con_conflict_check = 0x40001d6c );
PROVIDE( r_sch_prog_hw_reset_try = 0x40001d70 );
PROVIDE( r_sch_prog_et_state_reset = 0x40001d74 );
PROVIDE( r_sch_prog_end_isr_handler = 0x40001d78 );
PROVIDE( r_sch_plan_conflict_check = 0x40001d7c );
PROVIDE( r_rwble_isr_hw_fixed = 0x40001d80 );
PROVIDE( r_bt_bb_recorrect_is_dead = 0x40001d84 );
PROVIDE( r_bt_bb_restart_hw_recorrect = 0x40001d88 );
PROVIDE( r_ke_task_handler_pre = 0x40001da0 );
PROVIDE( r_ke_task_handler_end = 0x40001da4 );
PROVIDE( r_lld_scan_frm_skip_isr_eco = 0x40001db0 );
PROVIDE( r_lld_ext_scan_dynamic_pti_reset = 0x40001db4 );
PROVIDE( r_llc_rem_phy_upd_proc_continue_eco = 0x40001db8 );
PROVIDE( r_llm_get_preferred_phys = 0x40001dbc );
PROVIDE( r_lld_hw_cca_isr_eco = 0x40001dc0 );
PROVIDE( r_lld_sw_cca_isr_eco = 0x40001dc4 );
PROVIDE( r_lld_cca_chan_prn_e = 0x40001dc8 );
PROVIDE( r_lld_cca_chan_prn_s = 0x40001dcc );
PROVIDE( r_lld_cca_chan_sel_remap = 0x40001dd0 );
PROVIDE( r_lld_cca_chan_sel_1 = 0x40001dd4 );
PROVIDE( r_lld_cca_chan_sel_2 = 0x40001dd8 );
PROVIDE( r_lld_cca_set_thresh = 0x40001ddc );
PROVIDE( r_lld_cca_con_start = 0x40001de0 );
PROVIDE( r_lld_cca_con_end = 0x40001de4 );
PROVIDE( r_lld_cca_chm_restore = 0x40001de8 );
PROVIDE( r_lld_cca_chan_unused_check = 0x40001dec );
PROVIDE( r_lld_cca_chm_update_check = 0x40001df0 );
PROVIDE( r_lld_cca_busy_mode_handle = 0x40001df4 );
PROVIDE( r_lld_cca_lbt_handle = 0x40001df8 );
PROVIDE( r_lld_cca_scst_timeout_check = 0x40001dfc );
PROVIDE( r_lld_cca_chan_avl_timeout_check = 0x40001e00 );

PROVIDE( r_lld_con_start_hook = 0x40001ca8 );

/* ble Functions eco */
PROVIDE( r_bt_bb_isr_hack = 0x40000b9c );
PROVIDE( r_bt_rf_coex_conn_phy_coded_data_time_limit_en_get_hack = 0x40000ba8 );
PROVIDE( r_bt_rtp_get_txpwr_idx_by_act_hack = 0x40000c00 );
PROVIDE( r_btdm_task_post_hack = 0x40000c14 );
PROVIDE( r_btdm_task_post_from_isr_hack = 0x40000c18 );
PROVIDE( r_btdm_task_recycle_hack = 0x40000c1c );
PROVIDE( r_ke_task_schedule_hack = 0x40000e80 );
PROVIDE( r_llc_hci_command_handler_hack = 0x40000ef0 );
PROVIDE( r_llc_loc_ch_map_proc_continue_hack = 0x40000f5c );
PROVIDE( r_llc_loc_con_upd_proc_continue_hack = 0x40000f60 );
PROVIDE( r_llc_loc_phy_upd_proc_continue_hack = 0x40000f78 );
PROVIDE( r_llc_rem_con_upd_proc_continue_hack = 0x40000fb4 );
PROVIDE( r_lld_con_sched_hack = 0x40001118 );
PROVIDE( r_lld_con_stop_hack = 0x40001124 );
PROVIDE( r_lld_llcp_rx_ind_handler_hack = 0x400011b0 );
PROVIDE( r_lld_per_adv_sched_hack = 0x400011f8 );
PROVIDE( r_rf_txpwr_cs_get_hack = 0x40001428 );
PROVIDE( r_rf_txpwr_dbm_get_hack = 0x4000142c );
PROVIDE( r_sch_arb_event_start_isr_hack = 0x400014f8 );
PROVIDE( r_sch_plan_set_hack = 0x40001534 );
PROVIDE( r_sch_prog_end_isr_hack = 0x40001538 );
PROVIDE( r_lld_adv_ext_chain_scannable_construct_hack = 0x40001b58 );

PROVIDE( r_lld_scan_process_pkt_rx_hack = 0x40001280 );
PROVIDE( r_llm_le_features_get_hack = 0x400013b0 );

/* ble functions rename */
PROVIDE( r_lld_init_start_hack = 0x400011a4 );

/* ble functions disable */
/*
PROVIDE( r_lld_adv_frm_isr_eco = 0x40001d00 );
PROVIDE( r_lld_res_list_clear = 0x40004638 );
PROVIDE( r_lld_res_list_rem = 0x40004680 );
PROVIDE( r_lld_adv_start_hook = 0x40001c80 );
PROVIDE( r_lld_con_evt_start_cbk_eco = 0x40001d1c );
PROVIDE( r_lld_con_tx_prog_new_packet = 0x40001b74 );
PROVIDE( r_lld_adv_ext_chain_none_construct = 0x40001b50 );
PROVIDE( r_llc_llcp_send_eco = 0x40001cf4 );
PROVIDE( r_llc_llcp_channel_map_ind_ack = 0x40001d68 );
PROVIDE( r_rwble_isr = 0x40001464 );
PROVIDE( r_lld_scan_start_eco = 0x40001d24 );
PROVIDE( r_lld_scan_try_sched_eco = 0x40001dac );
PROVIDE( r_lld_scan_start_hook = 0x40001c74 );
PROVIDE( r_lld_init_start_hook = 0x40001cb8 );
PROVIDE( r_lld_scan_evt_start_cbk_eco = 0x40001d20 );
PROVIDE( r_ke_task_handler_get_overwrite = 0x40001da8 );
PROVIDE( r_hci_register_vendor_desc_tab = 0x40000d9c );
PROVIDE( r_lld_scan_process_pkt_rx_adv_rep = 0x40001284 );
PROVIDE( r_register_esp_vendor_cmd_handler = 0x40001400 );
PROVIDE( r_llc_llcp_pdu_handler_get_overwrite = 0x40001d5c );
PROVIDE( r_llc_start_eco = 0x40001cf8 );
*/
