/*
 * SPDX-FileCopyrightText: 2022-2024 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32h2.rom.ld for esp32h2
 *
 *
 * Generated from ./target/esp32h2/interface-esp32h2.yml md5sum c0ad4e113e5b29bb9d799f10f03edbc1
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group common
 ***************************************/

/* Functions */
PROVIDE( rtc_get_reset_reason = 0x40000018 );
PROVIDE( analog_super_wdt_reset_happened = 0x4000001c );
PROVIDE( rtc_get_wakeup_cause = 0x40000020 );
PROVIDE( rtc_unhold_all_pads = 0x40000024 );
PROVIDE( ets_printf = 0x40000028 );
PROVIDE( ets_install_putc1 = 0x4000002c );
PROVIDE( ets_install_putc2 = 0x40000030 );
PROVIDE( ets_install_uart_printf = 0x40000034 );
PROVIDE( ets_install_usb_printf = 0x40000038 );
PROVIDE( ets_get_printf_channel = 0x4000003c );
PROVIDE( ets_delay_us = 0x40000040 );
PROVIDE( ets_get_cpu_frequency = 0x40000044 );
PROVIDE( ets_update_cpu_frequency = 0x40000048 );
PROVIDE( ets_install_lock = 0x4000004c );
PROVIDE( UartRxString = 0x40000050 );
PROVIDE( UartGetCmdLn = 0x40000054 );
PROVIDE( uart_tx_one_char = 0x40000058 );
PROVIDE( uart_tx_one_char2 = 0x4000005c );
PROVIDE( uart_rx_one_char = 0x40000060 );
PROVIDE( uart_rx_one_char_block = 0x40000064 );
PROVIDE( uart_rx_intr_handler = 0x40000068 );
PROVIDE( uart_rx_readbuff = 0x4000006c );
PROVIDE( uartAttach = 0x40000070 );
PROVIDE( uart_tx_flush = 0x40000074 );
PROVIDE( uart_tx_wait_idle = 0x40000078 );
PROVIDE( uart_div_modify = 0x4000007c );
PROVIDE( ets_write_char_uart = 0x40000080 );
PROVIDE( uart_tx_switch = 0x40000084 );
PROVIDE( roundup2 = 0x40000088 );
PROVIDE( multofup = 0x4000008c );
PROVIDE( software_reset = 0x40000090 );
PROVIDE( software_reset_cpu = 0x40000094 );
PROVIDE( ets_clk_assist_debug_clock_enable = 0x40000098 );
PROVIDE( clear_super_wdt_reset_flag = 0x4000009c );
PROVIDE( disable_default_watchdog = 0x400000a0 );
PROVIDE( esp_rom_set_rtc_wake_addr = 0x400000a4 );
PROVIDE( esp_rom_get_rtc_wake_addr = 0x400000a8 );
PROVIDE( send_packet = 0x400000ac );
PROVIDE( recv_packet = 0x400000b0 );
PROVIDE( GetUartDevice = 0x400000b4 );
PROVIDE( UartDwnLdProc = 0x400000b8 );
PROVIDE( GetSecurityInfoProc = 0x400000bc );
PROVIDE( Uart_Init = 0x400000c0 );
PROVIDE( ets_set_user_start = 0x400000c4 );
/* Data (.data, .bss, .rodata) */
PROVIDE( ets_rom_layout_p = 0x4001fffc );
PROVIDE( ets_ops_table_ptr = 0x4084fff8 );
PROVIDE( g_saved_pc = 0x4084fffc );


/***************************************
 Group miniz
 ***************************************/

/* Functions */
PROVIDE( mz_adler32 = 0x400000c8 );
PROVIDE( mz_free = 0x400000cc );
PROVIDE( tdefl_compress = 0x400000d0 );
PROVIDE( tdefl_compress_buffer = 0x400000d4 );
PROVIDE( tdefl_compress_mem_to_heap = 0x400000d8 );
PROVIDE( tdefl_compress_mem_to_mem = 0x400000dc );
PROVIDE( tdefl_compress_mem_to_output = 0x400000e0 );
PROVIDE( tdefl_get_adler32 = 0x400000e4 );
PROVIDE( tdefl_get_prev_return_status = 0x400000e8 );
PROVIDE( tdefl_init = 0x400000ec );
PROVIDE( tdefl_write_image_to_png_file_in_memory = 0x400000f0 );
PROVIDE( tdefl_write_image_to_png_file_in_memory_ex = 0x400000f4 );
PROVIDE( tinfl_decompress = 0x400000f8 );
PROVIDE( tinfl_decompress_mem_to_callback = 0x400000fc );
PROVIDE( tinfl_decompress_mem_to_heap = 0x40000100 );
PROVIDE( tinfl_decompress_mem_to_mem = 0x40000104 );


/***************************************
 Group spiflash_legacy
 ***************************************/

/* Functions */
PROVIDE( esp_rom_spiflash_wait_idle = 0x40000108 );
PROVIDE( esp_rom_spiflash_write_encrypted = 0x4000010c );
PROVIDE( esp_rom_spiflash_write_encrypted_dest = 0x40000110 );
PROVIDE( esp_rom_spiflash_write_encrypted_enable = 0x40000114 );
PROVIDE( esp_rom_spiflash_write_encrypted_disable = 0x40000118 );
PROVIDE( esp_rom_spiflash_erase_chip = 0x4000011c );
PROVIDE( _esp_rom_spiflash_erase_sector = 0x40000120 );
PROVIDE( _esp_rom_spiflash_erase_block = 0x40000124 );
PROVIDE( _esp_rom_spiflash_write = 0x40000128 );
PROVIDE( _esp_rom_spiflash_read = 0x4000012c );
PROVIDE( _esp_rom_spiflash_unlock = 0x40000130 );
PROVIDE( _SPIEraseArea = 0x40000134 );
PROVIDE( _SPI_write_enable = 0x40000138 );
PROVIDE( esp_rom_spiflash_erase_sector = 0x4000013c );
PROVIDE( esp_rom_spiflash_erase_block = 0x40000140 );
PROVIDE( esp_rom_spiflash_write = 0x40000144 );
PROVIDE( esp_rom_spiflash_read = 0x40000148 );
PROVIDE( esp_rom_spiflash_unlock = 0x4000014c );
PROVIDE( SPIEraseArea = 0x40000150 );
PROVIDE( SPI_write_enable = 0x40000154 );
PROVIDE( esp_rom_spiflash_config_param = 0x40000158 );
PROVIDE( esp_rom_spiflash_read_user_cmd = 0x4000015c );
PROVIDE( esp_rom_spiflash_select_qio_pins = 0x40000160 );
PROVIDE( esp_rom_spi_flash_auto_sus_res = 0x40000164 );
PROVIDE( esp_rom_spi_flash_send_resume = 0x40000168 );
PROVIDE( esp_rom_spi_flash_update_id = 0x4000016c );
PROVIDE( esp_rom_spiflash_config_clk = 0x40000170 );
PROVIDE( esp_rom_spiflash_config_readmode = 0x40000174 );
PROVIDE( esp_rom_spiflash_read_status = 0x40000178 );
PROVIDE( esp_rom_spiflash_read_statushigh = 0x4000017c );
PROVIDE( esp_rom_spiflash_write_status = 0x40000180 );
PROVIDE( spi_cache_mode_switch = 0x40000184 );
PROVIDE( spi_common_set_dummy_output = 0x40000188 );
PROVIDE( spi_common_set_flash_cs_timing = 0x4000018c );
PROVIDE( esp_rom_spi_set_address_bit_len = 0x40000190 );
PROVIDE( SPILock = 0x40000194 );
PROVIDE( SPIMasterReadModeCnfig = 0x40000198 );
PROVIDE( SPI_Common_Command = 0x4000019c );
PROVIDE( SPI_WakeUp = 0x400001a0 );
PROVIDE( SPI_block_erase = 0x400001a4 );
PROVIDE( SPI_chip_erase = 0x400001a8 );
PROVIDE( SPI_init = 0x400001ac );
PROVIDE( SPI_page_program = 0x400001b0 );
PROVIDE( SPI_read_data = 0x400001b4 );
PROVIDE( SPI_sector_erase = 0x400001b8 );
PROVIDE( SelectSpiFunction = 0x400001bc );
PROVIDE( SetSpiDrvs = 0x400001c0 );
PROVIDE( Wait_SPI_Idle = 0x400001c4 );
PROVIDE( spi_dummy_len_fix = 0x400001c8 );
PROVIDE( Disable_QMode = 0x400001cc );
PROVIDE( Enable_QMode = 0x400001d0 );
PROVIDE( spi_flash_attach = 0x400001d4 );
PROVIDE( spi_flash_get_chip_size = 0x400001d8 );
PROVIDE( spi_flash_guard_set = 0x400001dc );
PROVIDE( spi_flash_guard_get = 0x400001e0 );
PROVIDE( spi_flash_read_encrypted = 0x400001e4 );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_spiflash_legacy_funcs = 0x4084fff0 );
PROVIDE( rom_spiflash_legacy_data = 0x4084ffec );
PROVIDE( g_flash_guard_ops = 0x4084fff4 );

/* Note: esp_rom_spiflash_write_disable was moved from esp32c6.rom.spiflash.ld */
PROVIDE( esp_rom_spiflash_write_disable = 0x40000270 );

/***************************************
 Group cache
 ***************************************/

/* Functions */
PROVIDE( Cache_Get_ICache_Line_Size = 0x400005fc );
PROVIDE( Cache_Get_Mode = 0x40000600 );
PROVIDE( Cache_Address_Through_Cache = 0x40000604 );
PROVIDE( ROM_Boot_Cache_Init = 0x40000608 );
PROVIDE( MMU_Set_Page_Mode = 0x4000060c );
PROVIDE( MMU_Get_Page_Mode = 0x40000610 );
PROVIDE( Cache_Invalidate_ICache_Items = 0x40000614 );
PROVIDE( Cache_Op_Addr = 0x40000618 );
PROVIDE( Cache_Invalidate_Addr = 0x4000061c );
PROVIDE( Cache_Invalidate_ICache_All = 0x40000620 );
PROVIDE( Cache_Mask_All = 0x40000624 );
PROVIDE( Cache_UnMask_Dram0 = 0x40000628 );
PROVIDE( Cache_Suspend_ICache_Autoload = 0x4000062c );
PROVIDE( Cache_Resume_ICache_Autoload = 0x40000630 );
PROVIDE( Cache_Start_ICache_Preload = 0x40000634 );
PROVIDE( Cache_ICache_Preload_Done = 0x40000638 );
PROVIDE( Cache_End_ICache_Preload = 0x4000063c );
PROVIDE( Cache_Config_ICache_Autoload = 0x40000640 );
PROVIDE( Cache_Enable_ICache_Autoload = 0x40000644 );
PROVIDE( Cache_Disable_ICache_Autoload = 0x40000648 );
PROVIDE( Cache_Enable_ICache_PreLock = 0x4000064c );
PROVIDE( Cache_Disable_ICache_PreLock = 0x40000650 );
PROVIDE( Cache_Lock_ICache_Items = 0x40000654 );
PROVIDE( Cache_Unlock_ICache_Items = 0x40000658 );
PROVIDE( Cache_Lock_Addr = 0x4000065c );
PROVIDE( Cache_Unlock_Addr = 0x40000660 );
PROVIDE( Cache_Disable_ICache = 0x40000664 );
PROVIDE( Cache_Enable_ICache = 0x40000668 );
PROVIDE( Cache_Suspend_ICache = 0x4000066c );
PROVIDE( Cache_Resume_ICache = 0x40000670 );
PROVIDE( Cache_Freeze_ICache_Enable = 0x40000674 );
PROVIDE( Cache_Freeze_ICache_Disable = 0x40000678 );
PROVIDE( Cache_Set_IDROM_MMU_Size = 0x4000067c );
PROVIDE( Cache_Get_IROM_MMU_End = 0x40000680 );
PROVIDE( Cache_Get_DROM_MMU_End = 0x40000684 );
PROVIDE( Cache_MMU_Init = 0x40000688 );
PROVIDE( Cache_MSPI_MMU_Set = 0x4000068c );
PROVIDE( Cache_Travel_Tag_Memory = 0x40000690 );
PROVIDE( Cache_Get_Virtual_Addr = 0x40000694 );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_cache_op_cb = 0x4084ffcc );
PROVIDE( rom_cache_internal_table_ptr = 0x4084ffc8 );


/***************************************
 Group clock
 ***************************************/

/* Functions */
PROVIDE( ets_clk_get_xtal_freq = 0x40000698 );
PROVIDE( ets_clk_get_cpu_freq = 0x4000069c );


/***************************************
 Group gpio
 ***************************************/

/* Functions */
PROVIDE( gpio_input_get = 0x400006a0 );
PROVIDE( gpio_matrix_in = 0x400006a4 );
PROVIDE( gpio_matrix_out = 0x400006a8 );
PROVIDE( gpio_output_disable = 0x400006ac );
PROVIDE( gpio_output_enable = 0x400006b0 );
PROVIDE( gpio_output_set = 0x400006b4 );
PROVIDE( gpio_pad_hold = 0x400006b8 );
PROVIDE( gpio_pad_input_disable = 0x400006bc );
PROVIDE( gpio_pad_input_enable = 0x400006c0 );
PROVIDE( gpio_pad_pulldown = 0x400006c4 );
PROVIDE( gpio_pad_pullup = 0x400006c8 );
PROVIDE( gpio_pad_select_gpio = 0x400006cc );
PROVIDE( gpio_pad_set_drv = 0x400006d0 );
PROVIDE( gpio_pad_unhold = 0x400006d4 );
PROVIDE( gpio_pin_wakeup_disable = 0x400006d8 );
PROVIDE( gpio_pin_wakeup_enable = 0x400006dc );
PROVIDE( gpio_bypass_matrix_in = 0x400006e0 );


/***************************************
 Group interrupts
 ***************************************/

/* Functions */
PROVIDE( esprv_intc_int_set_priority = 0x400006e4 );
PROVIDE( esprv_intc_int_set_threshold = 0x400006e8 );
PROVIDE( esprv_intc_int_enable = 0x400006ec );
PROVIDE( esprv_intc_int_disable = 0x400006f0 );
PROVIDE( esprv_intc_int_set_type = 0x400006f4 );
PROVIDE( intr_handler_set = 0x400006f8 );
PROVIDE( intr_matrix_set = 0x400006fc );
PROVIDE( ets_intr_lock = 0x40000700 );
PROVIDE( ets_intr_unlock = 0x40000704 );
PROVIDE( ets_isr_attach = 0x40000708 );
PROVIDE( ets_isr_mask = 0x4000070c );
PROVIDE( ets_isr_unmask = 0x40000710 );


/***************************************
 Group crypto
 ***************************************/

/* Functions */
PROVIDE( md5_vector = 0x40000714 );
PROVIDE( MD5Init = 0x40000718 );
PROVIDE( MD5Update = 0x4000071c );
PROVIDE( MD5Final = 0x40000720 );
PROVIDE( crc32_le = 0x40000724 );
PROVIDE( crc16_le = 0x40000728 );
PROVIDE( crc8_le = 0x4000072c );
PROVIDE( crc32_be = 0x40000730 );
PROVIDE( crc16_be = 0x40000734 );
PROVIDE( crc8_be = 0x40000738 );
PROVIDE( esp_crc8 = 0x4000073c );
PROVIDE( ets_sha_enable = 0x40000740 );
PROVIDE( ets_sha_disable = 0x40000744 );
PROVIDE( ets_sha_get_state = 0x40000748 );
PROVIDE( ets_sha_init = 0x4000074c );
PROVIDE( ets_sha_process = 0x40000750 );
PROVIDE( ets_sha_starts = 0x40000754 );
PROVIDE( ets_sha_update = 0x40000758 );
PROVIDE( ets_sha_finish = 0x4000075c );
PROVIDE( ets_sha_clone = 0x40000760 );
PROVIDE( ets_hmac_enable = 0x40000764 );
PROVIDE( ets_hmac_disable = 0x40000768 );
PROVIDE( ets_hmac_calculate_message = 0x4000076c );
PROVIDE( ets_hmac_calculate_downstream = 0x40000770 );
PROVIDE( ets_hmac_invalidate_downstream = 0x40000774 );
PROVIDE( ets_jtag_enable_temporarily = 0x40000778 );
PROVIDE( ets_aes_enable = 0x4000077c );
PROVIDE( ets_aes_disable = 0x40000780 );
PROVIDE( ets_aes_setkey = 0x40000784 );
PROVIDE( ets_aes_block = 0x40000788 );
PROVIDE( ets_aes_setkey_dec = 0x4000078c );
PROVIDE( ets_aes_setkey_enc = 0x40000790 );
PROVIDE( ets_bigint_enable = 0x40000794 );
PROVIDE( ets_bigint_disable = 0x40000798 );
PROVIDE( ets_bigint_multiply = 0x4000079c );
PROVIDE( ets_bigint_modmult = 0x400007a0 );
PROVIDE( ets_bigint_modexp = 0x400007a4 );
PROVIDE( ets_bigint_wait_finish = 0x400007a8 );
PROVIDE( ets_bigint_getz = 0x400007ac );
PROVIDE( ets_ds_enable = 0x400007b0 );
PROVIDE( ets_ds_disable = 0x400007b4 );
PROVIDE( ets_ds_start_sign = 0x400007b8 );
PROVIDE( ets_ds_is_busy = 0x400007bc );
PROVIDE( ets_ds_finish_sign = 0x400007c0 );
PROVIDE( ets_ds_encrypt_params = 0x400007c4 );
PROVIDE( ets_mgf1_sha256 = 0x400007c8 );
/* Data (.data, .bss, .rodata) */
PROVIDE( crc32_le_table_ptr = 0x4001fff8 );
PROVIDE( crc16_le_table_ptr = 0x4001fff4 );
PROVIDE( crc8_le_table_ptr = 0x4001fff0 );
PROVIDE( crc32_be_table_ptr = 0x4001ffec );
PROVIDE( crc16_be_table_ptr = 0x4001ffe8 );
PROVIDE( crc8_be_table_ptr = 0x4001ffe4 );


/***************************************
 Group efuse
 ***************************************/

/* Functions */
PROVIDE( ets_efuse_read = 0x400007cc );
PROVIDE( ets_efuse_program = 0x400007d0 );
PROVIDE( ets_efuse_clear_program_registers = 0x400007d4 );
PROVIDE( ets_efuse_write_key = 0x400007d8 );
PROVIDE( ets_efuse_get_read_register_address = 0x400007dc );
PROVIDE( ets_efuse_get_key_purpose = 0x400007e0 );
PROVIDE( ets_efuse_key_block_unused = 0x400007e4 );
PROVIDE( ets_efuse_find_unused_key_block = 0x400007e8 );
PROVIDE( ets_efuse_rs_calculate = 0x400007ec );
PROVIDE( ets_efuse_count_unused_key_blocks = 0x400007f0 );
PROVIDE( ets_efuse_secure_boot_enabled = 0x400007f4 );
PROVIDE( ets_efuse_secure_boot_aggressive_revoke_enabled = 0x400007f8 );
PROVIDE( ets_efuse_cache_encryption_enabled = 0x400007fc );
PROVIDE( ets_efuse_download_modes_disabled = 0x40000800 );
PROVIDE( ets_efuse_find_purpose = 0x40000804 );
PROVIDE( ets_efuse_force_send_resume = 0x40000808 );
PROVIDE( ets_efuse_get_flash_delay_us = 0x4000080c );
PROVIDE( ets_efuse_get_mac = 0x40000810 );
PROVIDE( ets_efuse_get_uart_print_control = 0x40000814 );
PROVIDE( ets_efuse_direct_boot_mode_disabled = 0x40000818 );
PROVIDE( ets_efuse_security_download_modes_enabled = 0x4000081c );
PROVIDE( ets_efuse_jtag_disabled = 0x40000820 );
PROVIDE( ets_efuse_usb_print_is_disabled = 0x40000824 );
PROVIDE( ets_efuse_usb_download_mode_disabled = 0x40000828 );
PROVIDE( ets_efuse_usb_device_disabled = 0x4000082c );
PROVIDE( ets_efuse_secure_boot_fast_wake_enabled = 0x40000830 );


/***************************************
 Group secureboot
 ***************************************/

/* Functions */
PROVIDE( ets_emsa_pss_verify = 0x40000834 );
PROVIDE( ets_rsa_pss_verify = 0x40000838 );
PROVIDE( ets_ecdsa_verify = 0x4000083c );
PROVIDE( ets_secure_boot_verify_bootloader_with_keys = 0x40000840 );
PROVIDE( ets_secure_boot_verify_signature = 0x40000844 );
PROVIDE( ets_secure_boot_read_key_digests = 0x40000848 );
PROVIDE( ets_secure_boot_revoke_public_key_digest = 0x4000084c );


/***************************************
 Group usb_device_uart
 ***************************************/

/* Functions */
PROVIDE( usb_serial_device_rx_one_char = 0x400009c0 );
PROVIDE( usb_serial_device_rx_one_char_block = 0x400009c4 );
PROVIDE( usb_serial_device_tx_flush = 0x400009c8 );
PROVIDE( usb_serial_device_tx_one_char = 0x400009cc );
