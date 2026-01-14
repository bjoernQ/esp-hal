/* ROM function interface esp32c3.rom.ld for esp32c3
 *
 *
 * Generated from ./interface-esp32c3.yml md5sum 93b28a9e1fe42d212018eb4336849208
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
PROVIDE( jtag_cpu_reset_happened = 0x40000020 );
PROVIDE( rtc_get_wakeup_cause = 0x40000024 );
PROVIDE( rtc_boot_control = 0x40000028 );
PROVIDE( rtc_select_apb_bridge = 0x4000002c );
PROVIDE( rtc_unhold_all_pads = 0x40000030 );
PROVIDE( set_rtc_memory_crc = 0x40000034 );
PROVIDE( cacl_rtc_memory_crc = 0x40000038 );
PROVIDE( ets_is_print_boot = 0x4000003c );
PROVIDE( ets_printf = 0x40000040 );
PROVIDE( ets_install_putc1 = 0x40000044 );
PROVIDE( ets_install_uart_printf = 0x40000048 );
PROVIDE( ets_install_putc2 = 0x4000004c );
PROVIDE( ets_delay_us = 0x40000050 );
PROVIDE( ets_get_stack_info = 0x40000054 );
PROVIDE( ets_install_lock = 0x40000058 );
PROVIDE( ets_backup_dma_copy = 0x4000005c );
PROVIDE( ets_apb_backup_init_lock_func = 0x40000060 );
PROVIDE( UartRxString = 0x40000064 );
PROVIDE( uart_tx_one_char = 0x40000068 );
PROVIDE( uart_tx_one_char2 = 0x4000006c );
PROVIDE( uart_rx_one_char = 0x40000070 );
PROVIDE( uart_rx_one_char_block = 0x40000074 );
PROVIDE( uart_rx_readbuff = 0x40000078 );
PROVIDE( uartAttach = 0x4000007c );
PROVIDE( uart_tx_flush = 0x40000080 );
PROVIDE( uart_tx_wait_idle = 0x40000084 );
PROVIDE( uart_div_modify = 0x40000088 );
PROVIDE( multofup = 0x4000008c );
PROVIDE( software_reset = 0x40000090 );
PROVIDE( software_reset_cpu = 0x40000094 );
PROVIDE( assist_debug_clock_enable = 0x40000098 );
PROVIDE( assist_debug_record_enable = 0x4000009c );
PROVIDE( clear_super_wdt_reset_flag = 0x400000a0 );
PROVIDE( disable_default_watchdog = 0x400000a4 );
PROVIDE( send_packet = 0x400000a8 );
PROVIDE( recv_packet = 0x400000ac );
PROVIDE( GetUartDevice = 0x400000b0 );
PROVIDE( UartDwnLdProc = 0x400000b4 );
PROVIDE( Uart_Init = 0x400000b8 );
PROVIDE( ets_set_user_start = 0x400000bc );
/* Data (.data, .bss, .rodata) */
PROVIDE( ets_rom_layout_p = 0x3ff1fffc );
PROVIDE( ets_ops_table_ptr = 0x3fcdfffc );


/***************************************
 Group miniz
 ***************************************/

/* Functions */
PROVIDE( mz_adler32 = 0x400000c0 );
PROVIDE( mz_crc32 = 0x400000c4 );
PROVIDE( mz_free = 0x400000c8 );
PROVIDE( tdefl_compress = 0x400000cc );
PROVIDE( tdefl_compress_buffer = 0x400000d0 );
PROVIDE( tdefl_compress_mem_to_heap = 0x400000d4 );
PROVIDE( tdefl_compress_mem_to_mem = 0x400000d8 );
PROVIDE( tdefl_compress_mem_to_output = 0x400000dc );
PROVIDE( tdefl_get_adler32 = 0x400000e0 );
PROVIDE( tdefl_get_prev_return_status = 0x400000e4 );
PROVIDE( tdefl_init = 0x400000e8 );
PROVIDE( tdefl_write_image_to_png_file_in_memory = 0x400000ec );
PROVIDE( tdefl_write_image_to_png_file_in_memory_ex = 0x400000f0 );
PROVIDE( tinfl_decompress = 0x400000f4 );
PROVIDE( tinfl_decompress_mem_to_callback = 0x400000f8 );
PROVIDE( tinfl_decompress_mem_to_heap = 0x400000fc );
PROVIDE( tinfl_decompress_mem_to_mem = 0x40000100 );


/***************************************
 Group tjpgd
 ***************************************/

/* Functions */
PROVIDE( jd_prepare = 0x40000104 );
PROVIDE( jd_decomp = 0x40000108 );


/***************************************
 Group spiflash_legacy
 ***************************************/

/* Functions */
PROVIDE( esp_rom_spiflash_wait_idle = 0x4000010c );
PROVIDE( esp_rom_spiflash_write_encrypted = 0x40000110 );
PROVIDE( esp_rom_spiflash_write_encrypted_dest = 0x40000114 );
PROVIDE( esp_rom_spiflash_write_encrypted_enable = 0x40000118 );
PROVIDE( esp_rom_spiflash_write_encrypted_disable = 0x4000011c );
PROVIDE( esp_rom_spiflash_erase_chip = 0x40000120 );
PROVIDE( esp_rom_spiflash_erase_block = 0x40000124 );
PROVIDE( esp_rom_spiflash_erase_sector = 0x40000128 );
PROVIDE( esp_rom_spiflash_write = 0x4000012c );
PROVIDE( esp_rom_spiflash_read = 0x40000130 );
PROVIDE( esp_rom_spiflash_config_param = 0x40000134 );
PROVIDE( esp_rom_spiflash_read_user_cmd = 0x40000138 );
PROVIDE( esp_rom_spiflash_select_qio_pins = 0x4000013c );
PROVIDE( esp_rom_spiflash_unlock = 0x40000140 );
PROVIDE( esp_rom_spi_flash_auto_sus_res = 0x40000144 );
PROVIDE( esp_rom_spi_flash_send_resume = 0x40000148 );
PROVIDE( esp_rom_spi_flash_update_id = 0x4000014c );
PROVIDE( esp_rom_spiflash_config_clk = 0x40000150 );
PROVIDE( esp_rom_spiflash_config_readmode = 0x40000154 );
PROVIDE( esp_rom_spiflash_read_status = 0x40000158 );
PROVIDE( esp_rom_spiflash_read_statushigh = 0x4000015c );
PROVIDE( esp_rom_spiflash_write_status = 0x40000160 );
PROVIDE( esp_rom_spiflash_attach = 0x40000164 );
PROVIDE( spi_flash_get_chip_size = 0x40000168 );
PROVIDE( spi_flash_guard_set = 0x4000016c );
PROVIDE( spi_flash_guard_get = 0x40000170 );
PROVIDE( spi_flash_write_config_set = 0x40000174 );
PROVIDE( spi_flash_write_config_get = 0x40000178 );
PROVIDE( spi_flash_safe_write_address_func_set = 0x4000017c );
PROVIDE( spi_flash_unlock = 0x40000180 );
PROVIDE( spi_flash_erase_range = 0x40000184 );
PROVIDE( spi_flash_erase_sector = 0x40000188 );
PROVIDE( spi_flash_write = 0x4000018c );
PROVIDE( spi_flash_read = 0x40000190 );
PROVIDE( spi_flash_write_encrypted = 0x40000194 );
PROVIDE( spi_flash_read_encrypted = 0x40000198 );
PROVIDE( spi_flash_mmap_os_func_set = 0x4000019c );
PROVIDE( spi_flash_mmap_page_num_init = 0x400001a0 );
PROVIDE( spi_flash_mmap = 0x400001a4 );
PROVIDE( spi_flash_mmap_pages = 0x400001a8 );
PROVIDE( spi_flash_munmap = 0x400001ac );
PROVIDE( spi_flash_mmap_dump = 0x400001b0 );
PROVIDE( spi_flash_check_and_flush_cache = 0x400001b4 );
PROVIDE( spi_flash_mmap_get_free_pages = 0x400001b8 );
PROVIDE( spi_flash_cache2phys = 0x400001bc );
PROVIDE( spi_flash_phys2cache = 0x400001c0 );
PROVIDE( spi_flash_disable_cache = 0x400001c4 );
PROVIDE( spi_flash_restore_cache = 0x400001c8 );
PROVIDE( spi_flash_cache_enabled = 0x400001cc );
PROVIDE( spi_flash_enable_cache = 0x400001d0 );
PROVIDE( spi_cache_mode_switch = 0x400001d4 );
PROVIDE( spi_common_set_dummy_output = 0x400001d8 );
PROVIDE( spi_common_set_flash_cs_timing = 0x400001dc );
PROVIDE( esp_enable_cache_flash_wrap = 0x400001e0 );
PROVIDE( SPIEraseArea = 0x400001e4 );
PROVIDE( SPILock = 0x400001e8 );
PROVIDE( SPIMasterReadModeCnfig = 0x400001ec );
PROVIDE( SPI_Common_Command = 0x400001f0 );
PROVIDE( SPI_WakeUp = 0x400001f4 );
PROVIDE( SPI_block_erase = 0x400001f8 );
PROVIDE( SPI_chip_erase = 0x400001fc );
PROVIDE( SPI_init = 0x40000200 );
PROVIDE( SPI_page_program = 0x40000204 );
PROVIDE( SPI_read_data = 0x40000208 );
PROVIDE( SPI_sector_erase = 0x4000020c );
PROVIDE( SPI_write_enable = 0x40000210 );
PROVIDE( SelectSpiFunction = 0x40000214 );
PROVIDE( SetSpiDrvs = 0x40000218 );
PROVIDE( Wait_SPI_Idle = 0x4000021c );
PROVIDE( spi_dummy_len_fix = 0x40000220 );
PROVIDE( Disable_QMode = 0x40000224 );
PROVIDE( Enable_QMode = 0x40000228 );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_spiflash_legacy_funcs = 0x3fcdfff4 );
PROVIDE( rom_spiflash_legacy_data = 0x3fcdfff0 );
PROVIDE( g_flash_guard_ops = 0x3fcdfff8 );


/***************************************
 Group spi_flash_hal
 ***************************************/

/* Functions */
PROVIDE( spi_flash_hal_poll_cmd_done = 0x4000022c );
PROVIDE( spi_flash_hal_device_config = 0x40000230 );
PROVIDE( spi_flash_hal_configure_host_io_mode = 0x40000234 );
PROVIDE( spi_flash_hal_common_command = 0x40000238 );
PROVIDE( spi_flash_hal_read = 0x4000023c );
PROVIDE( spi_flash_hal_erase_chip = 0x40000240 );
PROVIDE( spi_flash_hal_erase_sector = 0x40000244 );
PROVIDE( spi_flash_hal_erase_block = 0x40000248 );
PROVIDE( spi_flash_hal_program_page = 0x4000024c );
PROVIDE( spi_flash_hal_set_write_protect = 0x40000250 );
PROVIDE( spi_flash_hal_host_idle = 0x40000254 );


/***************************************
 Group spi_flash_chips
 ***************************************/

/* Functions */
PROVIDE( spi_flash_chip_generic_probe = 0x40000258 );
PROVIDE( spi_flash_chip_generic_detect_size = 0x4000025c );
PROVIDE( spi_flash_chip_generic_write = 0x40000260 );
PROVIDE( spi_flash_chip_generic_write_encrypted = 0x40000264 );
PROVIDE( spi_flash_chip_generic_set_write_protect = 0x40000268 );
PROVIDE( spi_flash_common_write_status_16b_wrsr = 0x4000026c );
PROVIDE( spi_flash_chip_generic_reset = 0x40000270 );
PROVIDE( spi_flash_chip_generic_erase_chip = 0x40000274 );
PROVIDE( spi_flash_chip_generic_erase_sector = 0x40000278 );
PROVIDE( spi_flash_chip_generic_erase_block = 0x4000027c );
PROVIDE( spi_flash_chip_generic_page_program = 0x40000280 );
PROVIDE( spi_flash_chip_generic_get_write_protect = 0x40000284 );
PROVIDE( spi_flash_common_read_status_16b_rdsr_rdsr2 = 0x40000288 );
PROVIDE( spi_flash_chip_generic_read_reg = 0x4000028c );
PROVIDE( spi_flash_chip_generic_yield = 0x40000290 );
PROVIDE( spi_flash_generic_wait_host_idle = 0x40000294 );
PROVIDE( spi_flash_chip_generic_wait_idle = 0x40000298 );
PROVIDE( spi_flash_chip_generic_config_host_io_mode = 0x4000029c );
PROVIDE( spi_flash_chip_generic_read = 0x400002a0 );
PROVIDE( spi_flash_common_read_status_8b_rdsr2 = 0x400002a4 );
PROVIDE( spi_flash_chip_generic_get_io_mode = 0x400002a8 );
PROVIDE( spi_flash_common_read_status_8b_rdsr = 0x400002ac );
PROVIDE( spi_flash_common_write_status_8b_wrsr = 0x400002b0 );
PROVIDE( spi_flash_common_write_status_8b_wrsr2 = 0x400002b4 );
PROVIDE( spi_flash_common_set_io_mode = 0x400002b8 );
PROVIDE( spi_flash_chip_generic_set_io_mode = 0x400002bc );
PROVIDE( spi_flash_chip_gd_get_io_mode = 0x400002c0 );
PROVIDE( spi_flash_chip_gd_probe = 0x400002c4 );
PROVIDE( spi_flash_chip_gd_set_io_mode = 0x400002c8 );
/* Data (.data, .bss, .rodata) */
PROVIDE( spi_flash_chip_generic_config_data = 0x3fcdffec );


/***************************************
 Group memspi_host
 ***************************************/

/* Functions */
PROVIDE( memspi_host_read_id_hs = 0x400002cc );
PROVIDE( memspi_host_read_status_hs = 0x400002d0 );
PROVIDE( memspi_host_flush_cache = 0x400002d4 );
PROVIDE( memspi_host_erase_chip = 0x400002d8 );
PROVIDE( memspi_host_erase_sector = 0x400002dc );
PROVIDE( memspi_host_erase_block = 0x400002e0 );
PROVIDE( memspi_host_program_page = 0x400002e4 );
PROVIDE( memspi_host_read = 0x400002e8 );
PROVIDE( memspi_host_set_write_protect = 0x400002ec );
PROVIDE( memspi_host_set_max_read_len = 0x400002f0 );
PROVIDE( memspi_host_read_data_slicer = 0x400002f4 );
PROVIDE( memspi_host_write_data_slicer = 0x400002f8 );


/***************************************
 Group esp_flash
 ***************************************/

/* Functions */
PROVIDE( esp_flash_chip_driver_initialized = 0x400002fc );
PROVIDE( esp_flash_read_id = 0x40000300 );
PROVIDE( esp_flash_get_size = 0x40000304 );
PROVIDE( esp_flash_erase_chip = 0x40000308 );
PROVIDE( rom_esp_flash_erase_region = 0x4000030c );
PROVIDE( esp_flash_get_chip_write_protect = 0x40000310 );
PROVIDE( esp_flash_set_chip_write_protect = 0x40000314 );
PROVIDE( esp_flash_get_protectable_regions = 0x40000318 );
PROVIDE( esp_flash_get_protected_region = 0x4000031c );
PROVIDE( esp_flash_set_protected_region = 0x40000320 );
PROVIDE( esp_flash_read = 0x40000324 );
PROVIDE( rom_esp_flash_write = 0x40000328 );
PROVIDE( rom_esp_flash_write_encrypted = 0x4000032c );
PROVIDE( esp_flash_read_encrypted = 0x40000330 );
PROVIDE( esp_flash_get_io_mode = 0x40000334 );
PROVIDE( esp_flash_set_io_mode = 0x40000338 );
PROVIDE( spi_flash_boot_attach = 0x4000033c );
PROVIDE( spi_flash_dump_counters = 0x40000340 );
PROVIDE( spi_flash_get_counters = 0x40000344 );
PROVIDE( spi_flash_op_counters_config = 0x40000348 );
PROVIDE( spi_flash_reset_counters = 0x4000034c );
/* Data (.data, .bss, .rodata) */
PROVIDE( esp_flash_default_chip = 0x3fcdffe8 );
PROVIDE( esp_flash_api_funcs = 0x3fcdffe4 );


/***************************************
 Group cache
 ***************************************/

/* Functions */
PROVIDE( Cache_Get_ICache_Line_Size = 0x400004b0 );
PROVIDE( Cache_Get_Mode = 0x400004b4 );
PROVIDE( Cache_Address_Through_IBus = 0x400004b8 );
PROVIDE( Cache_Address_Through_DBus = 0x400004bc );
PROVIDE( Cache_Set_Default_Mode = 0x400004c0 );
PROVIDE( Cache_Enable_Default_ICache_Mode = 0x400004c4 );
PROVIDE( ROM_Boot_Cache_Init = 0x400004c8 );
PROVIDE( Cache_Invalidate_ICache_Items = 0x400004cc );
PROVIDE( Cache_Op_Addr = 0x400004d0 );
PROVIDE( Cache_Invalidate_Addr = 0x400004d4 );
PROVIDE( Cache_Invalidate_ICache_All = 0x400004d8 );
PROVIDE( Cache_Mask_All = 0x400004dc );
PROVIDE( Cache_UnMask_Dram0 = 0x400004e0 );
PROVIDE( Cache_Suspend_ICache_Autoload = 0x400004e4 );
PROVIDE( Cache_Resume_ICache_Autoload = 0x400004e8 );
PROVIDE( Cache_Start_ICache_Preload = 0x400004ec );
PROVIDE( Cache_ICache_Preload_Done = 0x400004f0 );
PROVIDE( Cache_End_ICache_Preload = 0x400004f4 );
PROVIDE( Cache_Config_ICache_Autoload = 0x400004f8 );
PROVIDE( Cache_Enable_ICache_Autoload = 0x400004fc );
PROVIDE( Cache_Disable_ICache_Autoload = 0x40000500 );
PROVIDE( Cache_Enable_ICache_PreLock = 0x40000504 );
PROVIDE( Cache_Disable_ICache_PreLock = 0x40000508 );
PROVIDE( Cache_Lock_ICache_Items = 0x4000050c );
PROVIDE( Cache_Unlock_ICache_Items = 0x40000510 );
PROVIDE( Cache_Lock_Addr = 0x40000514 );
PROVIDE( Cache_Unlock_Addr = 0x40000518 );
PROVIDE( Cache_Disable_ICache = 0x4000051c );
PROVIDE( Cache_Enable_ICache = 0x40000520 );
PROVIDE( Cache_Suspend_ICache = 0x40000524 );
PROVIDE( Cache_Resume_ICache = 0x40000528 );
PROVIDE( Cache_Freeze_ICache_Enable = 0x4000052c );
PROVIDE( Cache_Freeze_ICache_Disable = 0x40000530 );
PROVIDE( Cache_Pms_Lock = 0x40000534 );
PROVIDE( Cache_Ibus_Pms_Set_Addr = 0x40000538 );
PROVIDE( Cache_Ibus_Pms_Set_Attr = 0x4000053c );
PROVIDE( Cache_Dbus_Pms_Set_Addr = 0x40000540 );
PROVIDE( Cache_Dbus_Pms_Set_Attr = 0x40000544 );
PROVIDE( Cache_Set_IDROM_MMU_Size = 0x40000548 );
PROVIDE( Cache_Get_IROM_MMU_End = 0x4000054c );
PROVIDE( Cache_Get_DROM_MMU_End = 0x40000550 );
PROVIDE( Cache_Owner_Init = 0x40000554 );
PROVIDE( Cache_Occupy_ICache_MEMORY = 0x40000558 );
PROVIDE( Cache_MMU_Init = 0x4000055c );
PROVIDE( Cache_Ibus_MMU_Set = 0x40000560 );
PROVIDE( Cache_Dbus_MMU_Set = 0x40000564 );
PROVIDE( Cache_Count_Flash_Pages = 0x40000568 );
PROVIDE( Cache_Travel_Tag_Memory = 0x4000056c );
PROVIDE( Cache_Get_Virtual_Addr = 0x40000570 );
PROVIDE( Cache_Get_Memory_BaseAddr = 0x40000574 );
PROVIDE( Cache_Get_Memory_Addr = 0x40000578 );
PROVIDE( Cache_Get_Memory_value = 0x4000057c );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_cache_op_cb = 0x3fcdffd8 );
PROVIDE( rom_cache_internal_table_ptr = 0x3fcdffd4 );


/***************************************
 Group clock
 ***************************************/

/* Functions */
PROVIDE( ets_get_apb_freq = 0x40000580 );
PROVIDE( ets_get_cpu_frequency = 0x40000584 );
PROVIDE( ets_update_cpu_frequency = 0x40000588 );
PROVIDE( ets_get_printf_channel = 0x4000058c );
PROVIDE( ets_get_xtal_div = 0x40000590 );
PROVIDE( ets_set_xtal_div = 0x40000594 );
PROVIDE( ets_get_xtal_freq = 0x40000598 );


/***************************************
 Group gpio
 ***************************************/

/* Functions */
PROVIDE( gpio_input_get = 0x4000059c );
PROVIDE( gpio_matrix_in = 0x400005a0 );
PROVIDE( gpio_matrix_out = 0x400005a4 );
PROVIDE( gpio_output_disable = 0x400005a8 );
PROVIDE( gpio_output_enable = 0x400005ac );
PROVIDE( gpio_output_set = 0x400005b0 );
PROVIDE( gpio_pad_hold = 0x400005b4 );
PROVIDE( gpio_pad_input_disable = 0x400005b8 );
PROVIDE( gpio_pad_input_enable = 0x400005bc );
PROVIDE( gpio_pad_pulldown = 0x400005c0 );
PROVIDE( gpio_pad_pullup = 0x400005c4 );
PROVIDE( gpio_pad_select_gpio = 0x400005c8 );
PROVIDE( gpio_pad_set_drv = 0x400005cc );
PROVIDE( gpio_pad_unhold = 0x400005d0 );
PROVIDE( gpio_pin_wakeup_disable = 0x400005d4 );
PROVIDE( gpio_pin_wakeup_enable = 0x400005d8 );
PROVIDE( gpio_bypass_matrix_in = 0x400005dc );


/***************************************
 Group interrupts
 ***************************************/

/* Functions */
PROVIDE( esprv_intc_int_set_priority = 0x400005e0 );
PROVIDE( esprv_intc_int_set_threshold = 0x400005e4 );
PROVIDE( esprv_intc_int_enable = 0x400005e8 );
PROVIDE( esprv_intc_int_disable = 0x400005ec );
PROVIDE( esprv_intc_int_set_type = 0x400005f0 );
PROVIDE( intr_matrix_set = 0x400005f4 );
PROVIDE( ets_intr_lock = 0x400005f8 );
PROVIDE( ets_intr_unlock = 0x400005fc );
PROVIDE( intr_handler_set = 0x40000600 );
PROVIDE( ets_isr_attach = 0x40000604 );
PROVIDE( ets_isr_mask = 0x40000608 );
PROVIDE( ets_isr_unmask = 0x4000060c );


/***************************************
 Group crypto
 ***************************************/

/* Functions */
PROVIDE( md5_vector = 0x40000610 );
PROVIDE( MD5Init = 0x40000614 );
PROVIDE( MD5Update = 0x40000618 );
PROVIDE( MD5Final = 0x4000061c );
PROVIDE( hmac_md5_vector = 0x40000620 );
PROVIDE( hmac_md5 = 0x40000624 );
PROVIDE( crc32_le = 0x40000628 );
PROVIDE( crc32_be = 0x4000062c );
PROVIDE( crc16_le = 0x40000630 );
PROVIDE( crc16_be = 0x40000634 );
PROVIDE( crc8_le = 0x40000638 );
PROVIDE( crc8_be = 0x4000063c );
PROVIDE( esp_crc8 = 0x40000640 );
PROVIDE( ets_sha_enable = 0x40000644 );
PROVIDE( ets_sha_disable = 0x40000648 );
PROVIDE( ets_sha_get_state = 0x4000064c );
PROVIDE( ets_sha_init = 0x40000650 );
PROVIDE( ets_sha_process = 0x40000654 );
PROVIDE( ets_sha_starts = 0x40000658 );
PROVIDE( ets_sha_update = 0x4000065c );
PROVIDE( ets_sha_finish = 0x40000660 );
PROVIDE( ets_sha_clone = 0x40000664 );
PROVIDE( ets_hmac_enable = 0x40000668 );
PROVIDE( ets_hmac_disable = 0x4000066c );
PROVIDE( ets_hmac_calculate_message = 0x40000670 );
PROVIDE( ets_hmac_calculate_downstream = 0x40000674 );
PROVIDE( ets_hmac_invalidate_downstream = 0x40000678 );
PROVIDE( ets_jtag_enable_temporarily = 0x4000067c );
PROVIDE( ets_aes_enable = 0x40000680 );
PROVIDE( ets_aes_disable = 0x40000684 );
PROVIDE( ets_aes_setkey = 0x40000688 );
PROVIDE( ets_aes_block = 0x4000068c );
PROVIDE( ets_bigint_enable = 0x40000690 );
PROVIDE( ets_bigint_disable = 0x40000694 );
PROVIDE( ets_bigint_multiply = 0x40000698 );
PROVIDE( ets_bigint_modmult = 0x4000069c );
PROVIDE( ets_bigint_modexp = 0x400006a0 );
PROVIDE( ets_bigint_wait_finish = 0x400006a4 );
PROVIDE( ets_bigint_getz = 0x400006a8 );
PROVIDE( ets_ds_enable = 0x400006ac );
PROVIDE( ets_ds_disable = 0x400006b0 );
PROVIDE( ets_ds_start_sign = 0x400006b4 );
PROVIDE( ets_ds_is_busy = 0x400006b8 );
PROVIDE( ets_ds_finish_sign = 0x400006bc );
PROVIDE( ets_ds_encrypt_params = 0x400006c0 );
PROVIDE( ets_aes_setkey_dec = 0x400006c4 );
PROVIDE( ets_aes_setkey_enc = 0x400006c8 );
PROVIDE( ets_mgf1_sha256 = 0x400006cc );


/***************************************
 Group efuse
 ***************************************/

/* Functions */
PROVIDE( ets_efuse_read = 0x400006d0 );
PROVIDE( ets_efuse_program = 0x400006d4 );
PROVIDE( ets_efuse_clear_program_registers = 0x400006d8 );
PROVIDE( ets_efuse_write_key = 0x400006dc );
PROVIDE( ets_efuse_get_read_register_address = 0x400006e0 );
PROVIDE( ets_efuse_get_key_purpose = 0x400006e4 );
PROVIDE( ets_efuse_key_block_unused = 0x400006e8 );
PROVIDE( ets_efuse_find_unused_key_block = 0x400006ec );
PROVIDE( ets_efuse_rs_calculate = 0x400006f0 );
PROVIDE( ets_efuse_count_unused_key_blocks = 0x400006f4 );
PROVIDE( ets_efuse_secure_boot_enabled = 0x400006f8 );
PROVIDE( ets_efuse_secure_boot_aggressive_revoke_enabled = 0x400006fc );
PROVIDE( ets_efuse_cache_encryption_enabled = 0x40000700 );
PROVIDE( ets_efuse_download_modes_disabled = 0x40000704 );
PROVIDE( ets_efuse_find_purpose = 0x40000708 );
PROVIDE( ets_efuse_flash_opi_5pads_power_sel_vddspi = 0x4000070c );
PROVIDE( ets_efuse_force_send_resume = 0x40000710 );
PROVIDE( ets_efuse_get_flash_delay_us = 0x40000714 );
PROVIDE( ets_efuse_get_mac = 0x40000718 );
PROVIDE( ets_efuse_get_spiconfig = 0x4000071c );
PROVIDE( ets_efuse_usb_print_is_disabled = 0x40000720 );
PROVIDE( ets_efuse_get_uart_print_channel = 0x40000724 );
PROVIDE( ets_efuse_usb_serial_jtag_print_is_disabled = 0x40000724 );
PROVIDE( ets_efuse_get_uart_print_control = 0x40000728 );
PROVIDE( ets_efuse_get_wp_pad = 0x4000072c );
PROVIDE( ets_efuse_legacy_spi_boot_mode_disabled = 0x40000730 );
PROVIDE( ets_efuse_security_download_modes_enabled = 0x40000734 );
PROVIDE( ets_efuse_set_timing = 0x40000738 );
PROVIDE( ets_efuse_jtag_disabled = 0x4000073c );
PROVIDE( ets_efuse_usb_download_mode_disabled = 0x40000740 );
PROVIDE( ets_efuse_usb_module_disabled = 0x40000744 );
PROVIDE( ets_efuse_usb_device_disabled = 0x40000748 );


/***************************************
 Group secureboot
 ***************************************/

/* Functions */
PROVIDE( ets_emsa_pss_verify = 0x4000074c );
PROVIDE( ets_rsa_pss_verify = 0x40000750 );
PROVIDE( ets_secure_boot_verify_bootloader_with_keys = 0x40000754 );
PROVIDE( ets_secure_boot_verify_signature = 0x40000758 );
PROVIDE( ets_secure_boot_read_key_digests = 0x4000075c );
PROVIDE( ets_secure_boot_revoke_public_key_digest = 0x40000760 );


/***************************************
 Group usb_uart
 ***************************************/

/* Functions */
PROVIDE( usb_uart_rx_one_char = 0x400008cc );
PROVIDE( usb_uart_rx_one_char_block = 0x400008d0 );
PROVIDE( usb_uart_tx_flush = 0x400008d4 );
PROVIDE( usb_uart_tx_one_char = 0x400008d8 );
/* Data (.data, .bss, .rodata) */
PROVIDE( g_uart_print = 0x3fcdffd1 );
PROVIDE( g_usb_print = 0x3fcdffd0 );


/***************************************
 Group bluetooth
 ***************************************/
/* Data (.data, .bss, .rodata) */
PROVIDE( bt_rf_coex_cfg_p = 0x3fcdffcc );
PROVIDE( bt_rf_coex_hooks_p = 0x3fcdffc8 );
PROVIDE( btdm_env_p = 0x3fcdffc4 );
PROVIDE( g_rw_controller_task_handle = 0x3fcdffc0 );
PROVIDE( g_rw_init_sem = 0x3fcdffbc );
PROVIDE( g_rw_schd_queue = 0x3fcdffb8 );
PROVIDE( lld_init_env = 0x3fcdffb4 );
PROVIDE( lld_rpa_renew_env = 0x3fcdffb0 );
PROVIDE( lld_scan_env = 0x3fcdffac );
PROVIDE( lld_scan_sync_env = 0x3fcdffa8 );
PROVIDE( lld_test_env = 0x3fcdffa4 );
PROVIDE( p_ble_util_buf_env = 0x3fcdffa0 );
PROVIDE( p_lld_env = 0x3fcdff9c );
PROVIDE( p_llm_env = 0x3fcdff98 );
PROVIDE( r_h4tl_eif_p = 0x3fcdff94 );
PROVIDE( r_hli_funcs_p = 0x3fcdff90 );
PROVIDE( r_ip_funcs_p = 0x3fcdff8c );
PROVIDE( r_modules_funcs_p = 0x3fcdff88 );
PROVIDE( r_osi_funcs_p = 0x3fcdff84 );
PROVIDE( r_plf_funcs_p = 0x3fcdff80 );
PROVIDE( vhci_env_p = 0x3fcdff7c );
PROVIDE( aa_gen = 0x3fcdff78 );
PROVIDE( aes_env = 0x3fcdff6c );
PROVIDE( bt_rf_coex_cfg_cb = 0x3fcdff1c );
PROVIDE( btdm_pwr_state = 0x3fcdff18 );
PROVIDE( btdm_slp_err = 0x3fcdff14 );
PROVIDE( ecc_env = 0x3fcdff0c );
PROVIDE( esp_handler = 0x3fcdff04 );
PROVIDE( esp_vendor_cmd = 0x3fcdfefc );
PROVIDE( g_adv_delay_dis = 0x3fcdfef8 );
PROVIDE( g_conflict_elt = 0x3fcdfef4 );
PROVIDE( g_eif_api = 0x3fcdfee4 );
PROVIDE( g_event_empty = 0x3fcdfed8 );
PROVIDE( g_llc_state = 0x3fcdfecc );
PROVIDE( g_llm_state = 0x3fcdfec8 );
PROVIDE( g_max_evt_env = 0x3fcdfec4 );
PROVIDE( g_misc_state = 0x3fcdfec0 );
PROVIDE( g_rma_rule_db = 0x3fcdfea4 );
PROVIDE( g_rtp_rule_db = 0x3fcdfe88 );
PROVIDE( g_scan_forever = 0x3fcdfe85 );
PROVIDE( g_time_msb = 0x3fcdfe84 );
PROVIDE( h4tl_env = 0x3fcdfe5c );
PROVIDE( hci_env = 0x3fcdfe38 );
PROVIDE( hci_ext_host = 0x3fcdfe34 );
PROVIDE( hci_fc_env = 0x3fcdfe2c );
PROVIDE( hci_tl_env = 0x3fcdfe00 );
PROVIDE( ke_env = 0x3fcdfdd0 );
PROVIDE( ke_event_env = 0x3fcdfd90 );
PROVIDE( ke_task_env = 0x3fcdfd14 );
PROVIDE( llc_env = 0x3fcdfcec );
PROVIDE( lld_adv_env = 0x3fcdfcc4 );
PROVIDE( lld_con_env = 0x3fcdfc9c );
PROVIDE( lld_exp_sync_pos_tab = 0x3fcdfc94 );
PROVIDE( lld_per_adv_env = 0x3fcdfc6c );
PROVIDE( lld_sync_env = 0x3fcdfc44 );
PROVIDE( llm_le_adv_flow_env = 0x3fcdfc38 );
PROVIDE( rw_sleep_enable = 0x3fcdfc34 );
PROVIDE( rwble_env = 0x3fcdfc2c );
PROVIDE( rwip_env = 0x3fcdfc10 );
PROVIDE( rwip_param = 0x3fcdfc04 );
PROVIDE( rwip_prog_delay = 0x3fcdfc00 );
PROVIDE( rwip_rf = 0x3fcdfbc8 );
PROVIDE( sch_alarm_env = 0x3fcdfbc0 );
PROVIDE( sch_arb_env = 0x3fcdfbac );
PROVIDE( sch_plan_env = 0x3fcdfba4 );
PROVIDE( sch_prog_env = 0x3fcdfaa0 );
PROVIDE( sch_slice_env = 0x3fcdfa40 );
PROVIDE( sch_slice_params = 0x3fcdfa38 );
PROVIDE( timer_env = 0x3fcdfa30 );
PROVIDE( unloaded_area = 0x3fcdfa2c );
PROVIDE( vshci_state = 0x3fcdfa28 );
PROVIDE( TASK_DESC_LLC = 0x3fcdfa1c );
PROVIDE( TASK_DESC_LLM = 0x3fcdfa10 );
PROVIDE( TASK_DESC_VSHCI = 0x3fcdfa04 );
PROVIDE( co_default_bdaddr = 0x3fcdf9fc );
PROVIDE( dbg_assert_block = 0x3fcdf9f8 );
PROVIDE( g_bt_plf_log_level = 0x3fcdf9f4 );
PROVIDE( hci_cmd_desc_tab_vs_esp = 0x3fcdf9d0 );
PROVIDE( hci_command_handler_tab_esp = 0x3fcdf9b8 );
PROVIDE( privacy_en = 0x3fcdf9b4 );
PROVIDE( sdk_cfg_priv_opts = 0x3fcdf96c );
PROVIDE( BasePoint_x_256 = 0x3ff1ffdc );
PROVIDE( BasePoint_y_256 = 0x3ff1ffbc );
PROVIDE( DebugE256PublicKey_x = 0x3ff1ff9c );
PROVIDE( DebugE256PublicKey_y = 0x3ff1ff7c );
PROVIDE( DebugE256SecretKey = 0x3ff1ff5c );
PROVIDE( ECC_4Win_Look_up_table = 0x3ff1f7a0 );
PROVIDE( LLM_AA_CT1 = 0x3ff1f79c );
PROVIDE( LLM_AA_CT2 = 0x3ff1f798 );
PROVIDE( RF_TX_PW_CONV_TBL = 0x3ff1f790 );
PROVIDE( TASK_DESC_MISC = 0x3ff1f784 );
PROVIDE( adv_evt_prop2type = 0x3ff1f768 );
PROVIDE( adv_evt_type2prop = 0x3ff1f760 );
PROVIDE( aes_cmac_zero = 0x3ff1f750 );
PROVIDE( aes_k2_salt = 0x3ff1f740 );
PROVIDE( aes_k3_id64 = 0x3ff1f738 );
PROVIDE( aes_k3_salt = 0x3ff1f728 );
PROVIDE( aes_k4_id6 = 0x3ff1f724 );
PROVIDE( aes_k4_salt = 0x3ff1f714 );
PROVIDE( bigHexP256 = 0x3ff1f6e8 );
PROVIDE( byte_tx_time = 0x3ff1f6e0 );
PROVIDE( co_null_bdaddr = 0x3ff1f6d8 );
PROVIDE( co_phy_mask_to_rate = 0x3ff1f6d0 );
PROVIDE( co_phy_mask_to_value = 0x3ff1f6c8 );
PROVIDE( co_phy_to_rate = 0x3ff1f6c4 );
PROVIDE( co_phy_value_to_mask = 0x3ff1f6c0 );
PROVIDE( co_rate_to_byte_dur_us = 0x3ff1f6b8 );
PROVIDE( co_rate_to_phy = 0x3ff1f6b0 );
PROVIDE( co_rate_to_phy_mask = 0x3ff1f6ac );
PROVIDE( co_sca2ppm = 0x3ff1f69c );
PROVIDE( coef_B = 0x3ff1f670 );
PROVIDE( connect_req_dur_tab = 0x3ff1f668 );
PROVIDE( ecc_Jacobian_InfinityPoint256 = 0x3ff1f5e4 );
PROVIDE( em_base_reg_lut = 0x3ff1f518 );
PROVIDE( fixed_tx_time = 0x3ff1f510 );
PROVIDE( h4tl_msgtype2hdrlen = 0x3ff1f508 );
PROVIDE( hci_cmd_desc_root_tab = 0x3ff1f4d8 );
PROVIDE( hci_cmd_desc_tab_ctrl_bb = 0x3ff1f46c );
PROVIDE( hci_cmd_desc_tab_info_par = 0x3ff1f43c );
PROVIDE( hci_cmd_desc_tab_le = 0x3ff1f0a0 );
PROVIDE( hci_cmd_desc_tab_lk_ctrl = 0x3ff1f088 );
PROVIDE( hci_cmd_desc_tab_stat_par = 0x3ff1f07c );
PROVIDE( hci_cmd_desc_tab_vs = 0x3ff1f040 );
PROVIDE( hci_evt_desc_tab = 0x3ff1eff8 );
PROVIDE( hci_evt_le_desc_tab = 0x3ff1ef58 );
PROVIDE( hci_evt_le_desc_tab_esp = 0x3ff1ef50 );
PROVIDE( hci_rsvd_evt_msk = 0x3ff1ef48 );
PROVIDE( lld_aux_phy_to_rate = 0x3ff1ef44 );
PROVIDE( lld_init_max_aux_dur_tab = 0x3ff1ef3c );
PROVIDE( lld_scan_map_legacy_pdu_to_evt_type = 0x3ff1ef34 );
PROVIDE( lld_scan_max_aux_dur_tab = 0x3ff1ef2c );
PROVIDE( lld_sync_max_aux_dur_tab = 0x3ff1ef24 );
PROVIDE( llm_local_le_feats = 0x3ff1ef1c );
PROVIDE( llm_local_le_states = 0x3ff1ef14 );
PROVIDE( llm_local_supp_cmds = 0x3ff1eeec );
PROVIDE( maxSecretKey_256 = 0x3ff1eecc );
PROVIDE( max_data_tx_time = 0x3ff1eec4 );
PROVIDE( one_bits = 0x3ff1eeb4 );
PROVIDE( rwip_coex_cfg = 0x3ff1eeac );
PROVIDE( rwip_priority = 0x3ff1ee94 );
PROVIDE( veryBigHexP256 = 0x3ff1ee48 );

/***************************************
 Group rom_pp
 ***************************************/

/* Functions */
PROVIDE( esp_pp_rom_version_get = 0x400015b0 );
PROVIDE( RC_GetBlockAckTime = 0x400015b4 );
PROVIDE( ebuf_list_remove = 0x400015b8 );
PROVIDE( esf_buf_alloc = 0x400015bc );
PROVIDE( GetAccess = 0x400015c8 );
PROVIDE( hal_mac_is_low_rate_enabled = 0x400015cc );
PROVIDE( hal_mac_tx_get_blockack = 0x400015d0 );
PROVIDE( hal_mac_tx_set_ppdu = 0x400015d4 );
PROVIDE( ic_get_trc = 0x400015d8 );
PROVIDE( ic_mac_deinit = 0x400015dc );
PROVIDE( ic_mac_init = 0x400015e0 );
PROVIDE( ic_interface_enabled = 0x400015e4 );
PROVIDE( is_lmac_idle = 0x400015e8 );
PROVIDE( lmacAdjustTimestamp = 0x400015ec );
PROVIDE( lmacDiscardAgedMSDU = 0x400015f0 );
PROVIDE( lmacDiscardMSDU = 0x400015f4 );
PROVIDE( lmacEndFrameExchangeSequence = 0x400015f8 );
PROVIDE( lmacIsIdle = 0x400015fc );
PROVIDE( lmacIsLongFrame = 0x40001600 );
PROVIDE( lmacMSDUAged = 0x40001604 );
PROVIDE( lmacPostTxComplete = 0x40001608 );
PROVIDE( lmacProcessAllTxTimeout = 0x4000160c );
PROVIDE( lmacProcessCollisions = 0x40001610 );
PROVIDE( lmacProcessRxSucData = 0x40001614 );
PROVIDE( lmacReachLongLimit = 0x40001618 );
PROVIDE( lmacReachShortLimit = 0x4000161c );
PROVIDE( lmacRecycleMPDU = 0x40001620 );
PROVIDE( lmacRxDone = 0x40001624 );
PROVIDE( lmacSetTxFrame = 0x40001628 );
PROVIDE( lmacTxFrame = 0x40001630 );
PROVIDE( mac_tx_set_duration = 0x40001634 );
PROVIDE( mac_tx_set_htsig = 0x40001638 );
PROVIDE( mac_tx_set_plcp0 = 0x4000163c );
PROVIDE( mac_tx_set_plcp1 = 0x40001640 );
PROVIDE( mac_tx_set_plcp2 = 0x40001644 );
PROVIDE( pm_check_state = 0x40001648 );
PROVIDE( pm_disable_dream_timer = 0x4000164c );
PROVIDE( pm_disable_sleep_delay_timer = 0x40001650 );
PROVIDE( pm_dream = 0x40001654 );
PROVIDE( pm_mac_wakeup = 0x40001658 );
PROVIDE( pm_mac_sleep = 0x4000165c );
PROVIDE( pm_enable_active_timer = 0x40001660 );
PROVIDE( pm_enable_sleep_delay_timer = 0x40001664 );
PROVIDE( pm_local_tsf_process = 0x40001668 );
PROVIDE( pm_set_beacon_filter = 0x4000166c );
PROVIDE( pm_is_in_wifi_slice_threshold = 0x40001670 );
PROVIDE( pm_is_waked = 0x40001674 );
PROVIDE( pm_keep_alive = 0x40001678 );
PROVIDE( pm_on_beacon_rx = 0x4000167c );
PROVIDE( pm_on_data_rx = 0x40001680 );
PROVIDE( pm_on_tbtt = 0x40001684 );
PROVIDE( pm_parse_beacon = 0x40001688 );
PROVIDE( pm_process_tim = 0x4000168c );
PROVIDE( pm_rx_beacon_process = 0x40001690 );
PROVIDE( pm_rx_data_process = 0x40001694 );
PROVIDE( pm_sleep = 0x40001698 );
PROVIDE( pm_sleep_for = 0x4000169c );
PROVIDE( pm_tbtt_process = 0x400016a0 );
PROVIDE( ppAMPDU2Normal = 0x400016a4 );
PROVIDE( ppAssembleAMPDU = 0x400016a8 );
PROVIDE( ppCalFrameTimes = 0x400016ac );
PROVIDE( ppCalSubFrameLength = 0x400016b0 );
PROVIDE( ppCalTxAMPDULength = 0x400016b4 );
PROVIDE( ppCheckTxAMPDUlength = 0x400016b8 );
PROVIDE( ppDequeueRxq_Locked = 0x400016bc );
PROVIDE( ppDequeueTxQ = 0x400016c0 );
PROVIDE( ppEmptyDelimiterLength = 0x400016c4 );
PROVIDE( ppEnqueueRxq = 0x400016c8 );
PROVIDE( ppEnqueueTxDone = 0x400016cc );
PROVIDE( ppGetTxQFirstAvail_Locked = 0x400016d0 );
PROVIDE( ppGetTxframe = 0x400016d4 );
PROVIDE( ppProcessRxPktHdr = 0x400016e0 );
PROVIDE( ppProcessTxQ = 0x400016e4 );
PROVIDE( ppRecordBarRRC = 0x400016e8 );
PROVIDE( lmacRequestTxopQueue = 0x400016ec );
PROVIDE( lmacReleaseTxopQueue = 0x400016f0 );
PROVIDE( ppRecycleAmpdu = 0x400016f4 );
PROVIDE( ppRecycleRxPkt = 0x400016f8 );
PROVIDE( ppResortTxAMPDU = 0x400016fc );
PROVIDE( ppResumeTxAMPDU = 0x40001700 );
PROVIDE( ppRxFragmentProc = 0x40001704 );
PROVIDE( ppRxPkt = 0x40001708 );
PROVIDE( ppRxProtoProc = 0x4000170c );
PROVIDE( ppSearchTxQueue = 0x40001710 );
PROVIDE( ppSearchTxframe = 0x40001714 );
PROVIDE( ppSelectNextQueue = 0x40001718 );
PROVIDE( ppSubFromAMPDU = 0x4000171c );
PROVIDE( ppTask = 0x40001720 );
PROVIDE( ppTxPkt = 0x40001724 );
PROVIDE( ppTxProtoProc = 0x40001728 );
PROVIDE( ppTxqUpdateBitmap = 0x4000172c );
PROVIDE( pp_coex_tx_request = 0x40001730 );
PROVIDE( pp_hdrsize = 0x40001734 );
PROVIDE( pp_post = 0x40001738 );
PROVIDE( pp_process_hmac_waiting_txq = 0x4000173c );
PROVIDE( rcGetAmpduSched = 0x40001740 );
PROVIDE( rcUpdateRxDone = 0x40001744 );
PROVIDE( rc_get_trc = 0x40001748 );
PROVIDE( rc_get_trc_by_index = 0x4000174c );
PROVIDE( rcAmpduLowerRate = 0x40001750 );
PROVIDE( rcampduuprate = 0x40001754 );
PROVIDE( rcClearCurAMPDUSched = 0x40001758 );
PROVIDE( rcClearCurSched = 0x4000175c );
PROVIDE( rcClearCurStat = 0x40001760 );
PROVIDE( rcLowerSched = 0x40001768 );
PROVIDE( rcSetTxAmpduLimit = 0x4000176c );
PROVIDE( rcTxUpdatePer = 0x40001770 );
PROVIDE( rcUpdateAckSnr = 0x40001774 );
PROVIDE( rcUpdateRate = 0x40001778 );
PROVIDE( rcUpdateTxDone = 0x4000177c );
PROVIDE( rcUpdateTxDoneAmpdu2 = 0x40001780 );
PROVIDE( rcUpSched = 0x40001784 );
PROVIDE( rssi_margin = 0x40001788 );
PROVIDE( rx11NRate2AMPDULimit = 0x4000178c );
PROVIDE( TRC_AMPDU_PER_DOWN_THRESHOLD = 0x40001790 );
PROVIDE( TRC_AMPDU_PER_UP_THRESHOLD = 0x40001794 );
PROVIDE( trc_calc_duration = 0x40001798 );
PROVIDE( trc_isTxAmpduOperational = 0x4000179c );
PROVIDE( trc_onAmpduOp = 0x400017a0 );
PROVIDE( TRC_PER_IS_GOOD = 0x400017a4 );
PROVIDE( trc_SetTxAmpduState = 0x400017a8 );
PROVIDE( trc_tid_isTxAmpduOperational = 0x400017ac );
PROVIDE( trcAmpduSetState = 0x400017b0 );
PROVIDE( wDev_AppendRxBlocks = 0x400017b8 );
PROVIDE( wDev_DiscardFrame = 0x400017bc );
PROVIDE( wDev_GetNoiseFloor = 0x400017c0 );
PROVIDE( wDev_IndicateAmpdu = 0x400017c4 );
PROVIDE( wDev_IndicateFrame = 0x400017c8 );
PROVIDE( wdev_bank_store = 0x400017cc );
PROVIDE( wdev_bank_load = 0x400017d0 );
PROVIDE( wdev_mac_reg_load = 0x400017d4 );
PROVIDE( wdev_mac_reg_store = 0x400017d8 );
PROVIDE( wdev_mac_special_reg_load = 0x400017dc );
PROVIDE( wdev_mac_special_reg_store = 0x400017e0 );
PROVIDE( wdev_mac_wakeup = 0x400017e4 );
PROVIDE( wdev_mac_sleep = 0x400017e8 );
PROVIDE( hal_mac_is_dma_enable = 0x400017ec );
PROVIDE( wDev_ProcessFiq = 0x400017f0 );
PROVIDE( wDev_ProcessRxSucData = 0x400017f4 );
PROVIDE( wdevProcessRxSucDataAll = 0x400017f8 );
PROVIDE( wdev_csi_len_align = 0x400017fc );
PROVIDE( ppDequeueTxDone_Locked = 0x40001800 );
PROVIDE( pm_tx_data_done_process = 0x40001808 );
PROVIDE( config_is_cache_tx_buf_enabled = 0x4000180c );
PROVIDE( ppMapWaitTxq = 0x40001810 );
PROVIDE( ppProcessWaitingQueue = 0x40001814 );
PROVIDE( ppDisableQueue = 0x40001818 );
PROVIDE( pm_allow_tx = 0x4000181c );
/* Data (.data, .bss, .rodata) */
PROVIDE( our_instances_ptr = 0x3ff1ee44 );
PROVIDE( pTxRx = 0x3fcdf968 );
PROVIDE( lmacConfMib_ptr = 0x3fcdf964 );
PROVIDE( our_wait_eb = 0x3fcdf960 );
PROVIDE( our_tx_eb = 0x3fcdf95c );
PROVIDE( pp_wdev_funcs = 0x3fcdf958 );
PROVIDE( g_osi_funcs_p = 0x3fcdf954 );
PROVIDE( wDevCtrl_ptr = 0x3fcdf950 );
PROVIDE( g_wdev_last_desc_reset_ptr = 0x3ff1ee40 );
PROVIDE( wDevMacSleep_ptr = 0x3fcdf94c );
PROVIDE( g_lmac_cnt_ptr = 0x3fcdf948 );
PROVIDE( our_controls_ptr = 0x3ff1ee3c );
PROVIDE( pp_sig_cnt_ptr = 0x3fcdf944 );
PROVIDE( g_eb_list_desc_ptr = 0x3fcdf940 );
PROVIDE( s_fragment_ptr = 0x3fcdf93c );
PROVIDE( if_ctrl_ptr = 0x3fcdf938 );
PROVIDE( g_intr_lock_mux = 0x3fcdf934 );
PROVIDE( g_wifi_global_lock = 0x3fcdf930 );
PROVIDE( s_wifi_queue = 0x3fcdf92c );
PROVIDE( pp_task_hdl = 0x3fcdf928 );
PROVIDE( s_pp_task_create_sem = 0x3fcdf924 );
PROVIDE( s_pp_task_del_sem = 0x3fcdf920 );
PROVIDE( g_wifi_menuconfig_ptr = 0x3fcdf91c );
PROVIDE( xphyQueue = 0x3fcdf918 );
PROVIDE( ap_no_lr_ptr = 0x3fcdf914 );
PROVIDE( rc11BSchedTbl_ptr = 0x3fcdf910 );
PROVIDE( rc11NSchedTbl_ptr = 0x3fcdf90c );
PROVIDE( rcLoRaSchedTbl_ptr = 0x3fcdf908 );
PROVIDE( BasicOFDMSched_ptr = 0x3fcdf904 );
PROVIDE( trc_ctl_ptr = 0x3fcdf900 );
PROVIDE( g_pm_cnt_ptr = 0x3fcdf8fc );
PROVIDE( g_pm_ptr = 0x3fcdf8f8 );
PROVIDE( g_pm_cfg_ptr = 0x3fcdf8f4 );
PROVIDE( g_esp_mesh_quick_funcs_ptr = 0x3fcdf8f0 );
PROVIDE( g_txop_queue_status_ptr = 0x3fcdf8ec );
PROVIDE( g_mac_sleep_en_ptr = 0x3fcdf8e8 );
PROVIDE( g_mesh_is_root_ptr = 0x3fcdf8e4 );
PROVIDE( g_mesh_topology_ptr = 0x3fcdf8e0 );
PROVIDE( g_mesh_init_ps_type_ptr = 0x3fcdf8dc );
PROVIDE( g_mesh_is_started_ptr = 0x3fcdf8d8 );
PROVIDE( g_config_func = 0x3fcdf8d4 );
PROVIDE( g_net80211_tx_func = 0x3fcdf8d0 );
PROVIDE( g_timer_func = 0x3fcdf8cc );
PROVIDE( s_michael_mic_failure_cb = 0x3fcdf8c8 );
PROVIDE( wifi_sta_rx_probe_req = 0x3fcdf8c4 );
PROVIDE( g_tx_done_cb_func = 0x3fcdf8c0 );
PROVIDE( g_per_conn_trc = 0x3fcdf874 );
PROVIDE( s_encap_amsdu_func = 0x3fcdf870 );


/***************************************
 Group rom_net80211
 ***************************************/

/* Functions */
PROVIDE( esp_net80211_rom_version_get = 0x40001820 );
PROVIDE( ampdu_dispatch = 0x40001824 );
PROVIDE( ampdu_dispatch_all = 0x40001828 );
PROVIDE( ampdu_dispatch_as_many_as_possible = 0x4000182c );
PROVIDE( ampdu_dispatch_movement = 0x40001830 );
PROVIDE( ampdu_dispatch_upto = 0x40001834 );
PROVIDE( chm_is_at_home_channel = 0x40001838 );
PROVIDE( cnx_node_is_existing = 0x4000183c );
PROVIDE( cnx_node_search = 0x40001840 );
PROVIDE( ic_ebuf_recycle_rx = 0x40001844 );
PROVIDE( ic_ebuf_recycle_tx = 0x40001848 );
PROVIDE( ic_reset_rx_ba = 0x4000184c );
PROVIDE( ieee80211_align_eb = 0x40001850 );
PROVIDE( ieee80211_ampdu_reorder = 0x40001854 );
PROVIDE( ieee80211_ampdu_start_age_timer = 0x40001858 );
PROVIDE( ieee80211_encap_esfbuf = 0x4000185c );
PROVIDE( ieee80211_is_tx_allowed = 0x40001860 );
PROVIDE( ieee80211_output_pending_eb = 0x40001864 );
PROVIDE( ieee80211_output_process = 0x40001868 );
PROVIDE( ieee80211_set_tx_desc = 0x4000186c );
PROVIDE( rom_sta_input = 0x40001870 );
PROVIDE( wifi_get_macaddr = 0x40001874 );
PROVIDE( wifi_rf_phy_disable = 0x40001878 );
PROVIDE( wifi_rf_phy_enable = 0x4000187c );
PROVIDE( ic_ebuf_alloc = 0x40001880 );
PROVIDE( ieee80211_classify = 0x40001884 );
PROVIDE( ieee80211_copy_eb_header = 0x40001888 );
PROVIDE( ieee80211_recycle_cache_eb = 0x4000188c );
PROVIDE( ieee80211_search_node = 0x40001890 );
PROVIDE( roundup2 = 0x40001894 );
PROVIDE( ieee80211_crypto_encap = 0x40001898 );
PROVIDE( ieee80211_crypto_decap = 0x4000189c );
PROVIDE( ieee80211_decap = 0x400018a0 );
PROVIDE( ieee80211_set_tx_pti = 0x400018a4 );
PROVIDE( wifi_is_started = 0x400018a8 );
/* Data (.data, .bss, .rodata) */
PROVIDE( net80211_funcs = 0x3fcdf86c );
PROVIDE( g_scan = 0x3fcdf868 );
PROVIDE( g_chm = 0x3fcdf864 );
PROVIDE( g_ic_ptr = 0x3fcdf860 );
PROVIDE( g_hmac_cnt_ptr = 0x3fcdf85c );
PROVIDE( g_tx_cacheq_ptr = 0x3fcdf858 );
PROVIDE( s_netstack_free = 0x3fcdf854 );
PROVIDE( mesh_rxcb = 0x3fcdf850 );
PROVIDE( sta_rxcb = 0x3fcdf84c );


/***************************************
 Group rom_coexist
 ***************************************/

/* Functions */
PROVIDE( esp_coex_rom_version_get = 0x400018ac );
PROVIDE( coex_bt_release = 0x400018b0 );
PROVIDE( coex_bt_request = 0x400018b4 );
PROVIDE( coex_core_ble_conn_dyn_prio_get = 0x400018b8 );
PROVIDE( coex_core_event_duration_get = 0x400018bc );
PROVIDE( coex_core_pti_get = 0x400018c0 );
PROVIDE( coex_core_release = 0x400018c4 );
PROVIDE( coex_core_request = 0x400018c8 );
PROVIDE( coex_core_status_get = 0x400018cc );
PROVIDE( coex_core_timer_idx_get = 0x400018d0 );
PROVIDE( coex_event_duration_get = 0x400018d4 );
PROVIDE( coex_hw_timer_disable = 0x400018d8 );
PROVIDE( coex_hw_timer_enable = 0x400018dc );
PROVIDE( coex_hw_timer_set = 0x400018e0 );
PROVIDE( coex_schm_interval_set = 0x400018e4 );
PROVIDE( coex_schm_lock = 0x400018e8 );
PROVIDE( coex_schm_unlock = 0x400018ec );
PROVIDE( coex_status_get = 0x400018f0 );
PROVIDE( coex_wifi_release = 0x400018f4 );
PROVIDE( esp_coex_ble_conn_dynamic_prio_get = 0x400018f8 );
/* Data (.data, .bss, .rodata) */
PROVIDE( coex_env_ptr = 0x3fcdf848 );
PROVIDE( coex_pti_tab_ptr = 0x3fcdf844 );
PROVIDE( coex_schm_env_ptr = 0x3fcdf840 );
PROVIDE( coexist_funcs = 0x3fcdf83c );
PROVIDE( g_coa_funcs_p = 0x3fcdf838 );
PROVIDE( g_coex_param_ptr = 0x3fcdf834 );


/***************************************
 Group rom_phy
 ***************************************/

/* Functions */
PROVIDE( phy_get_romfuncs = 0x400018fc );
PROVIDE( rom_abs_temp = 0x40001900 );
PROVIDE( rom_bb_bss_cbw40_dig = 0x40001904 );
PROVIDE( rom_bb_wdg_test_en = 0x40001908 );
PROVIDE( rom_bb_wdt_get_status = 0x4000190c );
PROVIDE( rom_bb_wdt_int_enable = 0x40001910 );
PROVIDE( rom_bb_wdt_rst_enable = 0x40001914 );
PROVIDE( rom_bb_wdt_timeout_clear = 0x40001918 );
PROVIDE( rom_cbw2040_cfg = 0x4000191c );
PROVIDE( rom_check_noise_floor = 0x40001920 );
PROVIDE( rom_chip_i2c_readReg = 0x40001924 );
PROVIDE( rom_chip_i2c_writeReg = 0x40001928 );
PROVIDE( rom_correct_rf_ana_gain = 0x4000192c );
PROVIDE( rom_dc_iq_est = 0x40001930 );
PROVIDE( rom_disable_agc = 0x40001934 );
PROVIDE( rom_en_pwdet = 0x40001938 );
PROVIDE( rom_enable_agc = 0x4000193c );
PROVIDE( rom_get_bbgain_db = 0x40001940 );
PROVIDE( rom_get_data_sat = 0x40001944 );
PROVIDE( rom_get_i2c_read_mask = 0x40001948 );
PROVIDE( rom_get_pwctrl_correct = 0x4000194c );
PROVIDE( rom_get_rf_gain_qdb = 0x40001950 );
PROVIDE( rom_i2c_readReg = 0x40001954 );
PROVIDE( rom_i2c_readReg_Mask = 0x40001958 );
PROVIDE( rom_i2c_writeReg = 0x4000195c );
PROVIDE( rom_i2c_writeReg_Mask = 0x40001960 );
PROVIDE( rom_index_to_txbbgain = 0x40001964 );
PROVIDE( rom_iq_est_disable = 0x40001968 );
PROVIDE( rom_iq_est_enable = 0x4000196c );
PROVIDE( rom_linear_to_db = 0x40001970 );
PROVIDE( rom_loopback_mode_en = 0x40001974 );
PROVIDE( rom_mhz2ieee = 0x40001978 );
PROVIDE( rom_noise_floor_auto_set = 0x4000197c );
PROVIDE( rom_pbus_debugmode = 0x40001980 );
PROVIDE( rom_pbus_force_mode = 0x40001984 );
PROVIDE( rom_pbus_force_test = 0x40001988 );
PROVIDE( rom_pbus_rd = 0x4000198c );
PROVIDE( rom_pbus_rd_addr = 0x40001990 );
PROVIDE( rom_pbus_rd_shift = 0x40001994 );
PROVIDE( rom_pbus_set_dco = 0x40001998 );
PROVIDE( rom_pbus_set_rxgain = 0x4000199c );
PROVIDE( rom_pbus_workmode = 0x400019a0 );
PROVIDE( rom_pbus_xpd_rx_off = 0x400019a4 );
PROVIDE( rom_pbus_xpd_rx_on = 0x400019a8 );
PROVIDE( rom_pbus_xpd_tx_off = 0x400019ac );
PROVIDE( rom_pbus_xpd_tx_on = 0x400019b0 );
PROVIDE( rom_phy_byte_to_word = 0x400019b4 );
PROVIDE( rom_phy_disable_cca = 0x400019b8 );
PROVIDE( rom_phy_enable_cca = 0x400019bc );
PROVIDE( rom_phy_get_noisefloor = 0x400019c0 );
PROVIDE( rom_phy_get_rx_freq = 0x400019c4 );
PROVIDE( rom_phy_set_bbfreq_init = 0x400019c8 );
PROVIDE( rom_pow_usr = 0x400019cc );
PROVIDE( rom_pwdet_sar2_init = 0x400019d0 );
PROVIDE( rom_read_hw_noisefloor = 0x400019d4 );
PROVIDE( rom_read_sar_dout = 0x400019d8 );
PROVIDE( rom_set_cal_rxdc = 0x400019dc );
PROVIDE( rom_set_chan_cal_interp = 0x400019e0 );
PROVIDE( rom_set_loopback_gain = 0x400019e4 );
PROVIDE( rom_set_noise_floor = 0x400019e8 );
PROVIDE( rom_set_rxclk_en = 0x400019ec );
PROVIDE( rom_set_tx_dig_gain = 0x400019f0 );
PROVIDE( rom_set_txcap_reg = 0x400019f4 );
PROVIDE( rom_set_txclk_en = 0x400019f8 );
PROVIDE( rom_spur_cal = 0x400019fc );
PROVIDE( rom_spur_reg_write_one_tone = 0x40001a00 );
PROVIDE( rom_target_power_add_backoff = 0x40001a04 );
PROVIDE( rom_tx_pwctrl_bg_init = 0x40001a08 );
PROVIDE( rom_txbbgain_to_index = 0x40001a0c );
PROVIDE( rom_wifi_11g_rate_chg = 0x40001a10 );
PROVIDE( rom_write_gain_mem = 0x40001a14 );
PROVIDE( chip726_phyrom_version = 0x40001a18 );
PROVIDE( rom_disable_wifi_agc = 0x40001a1c );
PROVIDE( rom_enable_wifi_agc = 0x40001a20 );
PROVIDE( rom_set_tx_gain_table = 0x40001a24 );
PROVIDE( rom_bt_index_to_bb = 0x40001a28 );
PROVIDE( rom_bt_bb_to_index = 0x40001a2c );
PROVIDE( rom_wr_bt_tx_atten = 0x40001a30 );
PROVIDE( rom_wr_bt_tx_gain_mem = 0x40001a34 );
PROVIDE( rom_spur_coef_cfg = 0x40001a38 );
PROVIDE( rom_bb_bss_cbw40 = 0x40001a3c );
PROVIDE( rom_set_cca = 0x40001a40 );
PROVIDE( rom_tx_paon_set = 0x40001a44 );
PROVIDE( rom_i2cmst_reg_init = 0x40001a48 );
PROVIDE( rom_iq_corr_enable = 0x40001a4c );
PROVIDE( rom_fe_reg_init = 0x40001a50 );
PROVIDE( rom_agc_reg_init = 0x40001a54 );
PROVIDE( rom_bb_reg_init = 0x40001a58 );
PROVIDE( rom_mac_enable_bb = 0x40001a5c );
PROVIDE( rom_bb_wdg_cfg = 0x40001a60 );
PROVIDE( rom_force_txon = 0x40001a64 );
PROVIDE( rom_fe_txrx_reset = 0x40001a68 );
PROVIDE( rom_set_rx_comp = 0x40001a6c );
PROVIDE( rom_set_pbus_reg = 0x40001a70 );
PROVIDE( rom_write_chan_freq = 0x40001a74 );
PROVIDE( rom_phy_xpd_rf = 0x40001a78 );
PROVIDE( rom_set_xpd_sar = 0x40001a7c );
PROVIDE( rom_write_dac_gain2 = 0x40001a80 );
PROVIDE( rom_rtc_sar2_init = 0x40001a84 );
PROVIDE( rom_get_target_power_offset = 0x40001a88 );
PROVIDE( rom_write_txrate_power_offset = 0x40001a8c );
PROVIDE( rom_get_rate_fcc_index = 0x40001a90 );
PROVIDE( rom_get_rate_target_power = 0x40001a94 );
PROVIDE( rom_write_wifi_dig_gain = 0x40001a98 );
PROVIDE( rom_bt_correct_rf_ana_gain = 0x40001a9c );
PROVIDE( rom_pkdet_vol_start = 0x40001aa0 );
PROVIDE( rom_read_sar2_code = 0x40001aa4 );
PROVIDE( rom_get_sar2_vol = 0x40001aa8 );
PROVIDE( rom_get_pll_vol = 0x40001aac );
PROVIDE( rom_get_phy_target_power = 0x40001ab0 );
PROVIDE( rom_temp_to_power = 0x40001ab4 );
PROVIDE( rom_phy_track_pll_cap = 0x40001ab8 );
PROVIDE( rom_phy_pwdet_always_en = 0x40001abc );
PROVIDE( rom_phy_pwdet_onetime_en = 0x40001ac0 );
PROVIDE( rom_get_i2c_mst0_mask = 0x40001ac4 );
PROVIDE( rom_get_i2c_hostid = 0x40001ac8 );
PROVIDE( rom_enter_critical_phy = 0x40001acc );
PROVIDE( rom_exit_critical_phy = 0x40001ad0 );
PROVIDE( rom_chip_i2c_readReg_org = 0x40001ad4 );
PROVIDE( rom_i2c_paral_set_mst0 = 0x40001ad8 );
PROVIDE( rom_i2c_paral_set_read = 0x40001adc );
PROVIDE( rom_i2c_paral_read = 0x40001ae0 );
PROVIDE( rom_i2c_paral_write = 0x40001ae4 );
PROVIDE( rom_i2c_paral_write_num = 0x40001ae8 );
PROVIDE( rom_i2c_paral_write_mask = 0x40001aec );
PROVIDE( rom_bb_bss_cbw40_ana = 0x40001af0 );
PROVIDE( rom_chan_to_freq = 0x40001af4 );
PROVIDE( rom_open_i2c_xpd = 0x40001af8 );
PROVIDE( rom_dac_rate_set = 0x40001afc );
PROVIDE( rom_tsens_read_init = 0x40001b00 );
PROVIDE( rom_tsens_code_read = 0x40001b04 );
PROVIDE( rom_tsens_index_to_dac = 0x40001b08 );
PROVIDE( rom_tsens_index_to_offset = 0x40001b0c );
PROVIDE( rom_tsens_dac_cal = 0x40001b10 );
PROVIDE( rom_code_to_temp = 0x40001b14 );
PROVIDE( rom_write_pll_cap_mem = 0x40001b18 );
PROVIDE( rom_pll_correct_dcap = 0x40001b1c );
PROVIDE( rom_phy_en_hw_set_freq = 0x40001b20 );
PROVIDE( rom_phy_dis_hw_set_freq = 0x40001b24 );
PROVIDE( rom_pll_vol_cal = 0x40001b28 );
