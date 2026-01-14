/* ROM function interface esp32s3.rom.ld for esp32s3
 *
 *
 * Generated from ./interface-esp32s3.yml md5sum 39c4ce259b11323b9404c192b01b712b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group common
 ***************************************/

/* Functions */
PROVIDE( rtc_get_reset_reason = 0x4000057c );
PROVIDE( analog_super_wdt_reset_happened = 0x40000588 );
PROVIDE( jtag_cpu_reset_happened = 0x40000594 );
PROVIDE( rtc_get_wakeup_cause = 0x400005a0 );
PROVIDE( rtc_select_apb_bridge = 0x400005ac );
PROVIDE( rtc_unhold_all_pads = 0x400005b8 );
PROVIDE( ets_is_print_boot = 0x400005c4 );
PROVIDE( ets_printf = 0x400005d0 );
PROVIDE( ets_install_putc1 = 0x400005dc );
PROVIDE( ets_install_uart_printf = 0x400005e8 );
PROVIDE( ets_install_putc2 = 0x400005f4 );
PROVIDE( ets_delay_us = 0x40000600 );
PROVIDE( ets_get_stack_info = 0x4000060c );
PROVIDE( ets_install_lock = 0x40000618 );
PROVIDE( ets_backup_dma_copy = 0x40000624 );
PROVIDE( ets_apb_backup_init_lock_func = 0x40000630 );
PROVIDE( UartRxString = 0x4000063c );
PROVIDE( uart_tx_one_char = 0x40000648 );
PROVIDE( uart_tx_one_char2 = 0x40000654 );
PROVIDE( uart_rx_one_char = 0x40000660 );
PROVIDE( uart_rx_one_char_block = 0x4000066c );
PROVIDE( uart_rx_readbuff = 0x40000678 );
PROVIDE( uartAttach = 0x40000684 );
PROVIDE( uart_tx_flush = 0x40000690 );
PROVIDE( uart_tx_wait_idle = 0x4000069c );
PROVIDE( uart_div_modify = 0x400006a8 );
PROVIDE( ets_write_char_uart = 0x400006b4 );
PROVIDE( uart_tx_switch = 0x400006c0 );
PROVIDE( multofup = 0x400006cc );
PROVIDE( software_reset = 0x400006d8 );
PROVIDE( software_reset_cpu = 0x400006e4 );
PROVIDE( assist_debug_clock_enable = 0x400006f0 );
PROVIDE( assist_debug_record_enable = 0x400006fc );
PROVIDE( clear_super_wdt_reset_flag = 0x40000708 );
PROVIDE( disable_default_watchdog = 0x40000714 );
PROVIDE( ets_set_appcpu_boot_addr = 0x40000720 );
PROVIDE( esp_rom_set_rtc_wake_addr = 0x4000072c );
PROVIDE( esp_rom_get_rtc_wake_addr = 0x40000738 );
PROVIDE( send_packet = 0x40000744 );
PROVIDE( recv_packet = 0x40000750 );
PROVIDE( GetUartDevice = 0x4000075c );
PROVIDE( UartDwnLdProc = 0x40000768 );
PROVIDE( Uart_Init = 0x40000774 );
PROVIDE( ets_set_user_start = 0x40000780 );
/* Data (.data, .bss, .rodata) */
PROVIDE( ets_rom_layout_p = 0x3ff1fffc );
PROVIDE( ets_ops_table_ptr = 0x3fcefffc );


/***************************************
 Group miniz
 ***************************************/

/* Functions */
PROVIDE( mz_adler32 = 0x4000078c );
PROVIDE( mz_crc32 = 0x40000798 );
PROVIDE( mz_free = 0x400007a4 );
PROVIDE( tdefl_compress = 0x400007b0 );
PROVIDE( tdefl_compress_buffer = 0x400007bc );
PROVIDE( tdefl_compress_mem_to_heap = 0x400007c8 );
PROVIDE( tdefl_compress_mem_to_mem = 0x400007d4 );
PROVIDE( tdefl_compress_mem_to_output = 0x400007e0 );
PROVIDE( tdefl_get_adler32 = 0x400007ec );
PROVIDE( tdefl_get_prev_return_status = 0x400007f8 );
PROVIDE( tdefl_init = 0x40000804 );
PROVIDE( tdefl_write_image_to_png_file_in_memory = 0x40000810 );
PROVIDE( tdefl_write_image_to_png_file_in_memory_ex = 0x4000081c );
PROVIDE( tinfl_decompress = 0x40000828 );
PROVIDE( tinfl_decompress_mem_to_callback = 0x40000834 );
PROVIDE( tinfl_decompress_mem_to_heap = 0x40000840 );
PROVIDE( tinfl_decompress_mem_to_mem = 0x4000084c );


/***************************************
 Group tjpgd
 ***************************************/

/* Functions */
PROVIDE( jd_prepare = 0x40000858 );
PROVIDE (jd_decomp = 0x40000864 );


/***************************************
 Group esp-dsp
 ***************************************/

/* Data (.data, .bss, .rodata) */
PROVIDE( dsps_fft2r_w_table_fc32_1024 = 0x3fcefff8 );


/***************************************
 Group opi_flash
 ***************************************/

/* Functions */
PROVIDE( opi_flash_set_lock_func = 0x40000870 );
PROVIDE( esp_rom_spi_cmd_config = 0x4000087c );
PROVIDE( esp_rom_spi_cmd_start = 0x40000888 );
PROVIDE( esp_rom_opiflash_pin_config = 0x40000894 );
PROVIDE( esp_rom_spi_set_op_mode = 0x400008a0 );
PROVIDE( esp_rom_opiflash_mode_reset = 0x400008ac );
PROVIDE( esp_rom_opiflash_exec_cmd = 0x400008b8 );
PROVIDE( esp_rom_opiflash_soft_reset = 0x400008c4 );
PROVIDE( esp_rom_opiflash_read_id = 0x400008d0 );
PROVIDE( esp_rom_opiflash_rdsr = 0x400008dc );
PROVIDE( esp_rom_opiflash_wait_idle = 0x400008e8 );
PROVIDE( esp_rom_opiflash_wren = 0x400008f4 );
PROVIDE( esp_rom_opiflash_erase_sector = 0x40000900 );
PROVIDE( esp_rom_opiflash_erase_block_64k = 0x4000090c );
PROVIDE( esp_rom_opiflash_erase_area = 0x40000918 );
PROVIDE( esp_rom_opiflash_read = 0x40000924 );
PROVIDE( esp_rom_opiflash_write = 0x40000930 );
PROVIDE( esp_rom_spi_set_dtr_swap_mode = 0x4000093c );
PROVIDE( esp_rom_opiflash_exit_continuous_read_mode = 0x40000948 );
PROVIDE( esp_rom_opiflash_legacy_driver_init = 0x40000954 );
PROVIDE( esp_rom_opiflash_read_raw = 0x4004d9d4);
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_opiflash_cmd_def = 0x3fcefff4 );
PROVIDE( rom_spi_usr_cmd_legacy_funcs = 0x3fcefff0 );


/***************************************
 Group spiflash_legacy
 ***************************************/

/* Functions */
PROVIDE( esp_rom_spiflash_wait_idle = 0x40000960 );
PROVIDE( esp_rom_spiflash_write_encrypted = 0x4000096c );
PROVIDE( esp_rom_spiflash_write_encrypted_dest = 0x40000978 );
PROVIDE( esp_rom_spiflash_write_encrypted_enable = 0x40000984 );
PROVIDE( esp_rom_spiflash_write_encrypted_disable = 0x40000990 );
PROVIDE( esp_rom_spiflash_erase_chip = 0x4000099c );
PROVIDE( _esp_rom_spiflash_erase_sector = 0x400009a8 );
PROVIDE( _esp_rom_spiflash_erase_block = 0x400009b4 );
PROVIDE( _esp_rom_spiflash_write = 0x400009c0 );
PROVIDE( _esp_rom_spiflash_read = 0x400009cc );
PROVIDE( _esp_rom_spiflash_unlock = 0x400009d8 );
PROVIDE( _SPIEraseArea = 0x400009e4 );
PROVIDE( _SPI_write_enable = 0x400009f0 );
PROVIDE( esp_rom_spiflash_erase_sector = 0x400009fc );
PROVIDE( esp_rom_spiflash_erase_block = 0x40000a08 );
PROVIDE( esp_rom_spiflash_write = 0x40000a14 );
PROVIDE( esp_rom_spiflash_read = 0x40000a20 );
PROVIDE( esp_rom_spiflash_unlock = 0x40000a2c );
PROVIDE( SPIEraseArea = 0x40000a38 );
PROVIDE( SPI_write_enable = 0x40000a44 );
PROVIDE( esp_rom_spiflash_config_param = 0x40000a50 );
PROVIDE( esp_rom_spiflash_read_user_cmd = 0x40000a5c );
PROVIDE( esp_rom_spiflash_select_qio_pins = 0x40000a68 );
PROVIDE( esp_rom_spi_flash_auto_sus_res = 0x40000a74 );
PROVIDE( esp_rom_spi_flash_send_resume = 0x40000a80 );
PROVIDE( esp_rom_spi_flash_update_id = 0x40000a8c );
PROVIDE( esp_rom_spiflash_config_clk = 0x40000a98 );
PROVIDE( esp_rom_spiflash_config_readmode = 0x40000aa4 );
PROVIDE( esp_rom_spiflash_read_status = 0x40000ab0 );
PROVIDE( esp_rom_spiflash_read_statushigh = 0x40000abc );
PROVIDE( esp_rom_spiflash_write_status = 0x40000ac8 );
PROVIDE( esp_rom_opiflash_cache_mode_config = 0x40000ad4 );
PROVIDE( esp_rom_spiflash_auto_wait_idle = 0x40000ae0 );
PROVIDE( spi_flash_attach = 0x40000aec );
PROVIDE( spi_flash_get_chip_size = 0x40000af8 );
PROVIDE( spi_flash_guard_set = 0x40000b04 );
PROVIDE( spi_flash_guard_get = 0x40000b10 );
PROVIDE( spi_flash_write_config_set = 0x40000b1c );
PROVIDE( spi_flash_write_config_get = 0x40000b28 );
PROVIDE( spi_flash_safe_write_address_func_set = 0x40000b34 );
PROVIDE( spi_flash_unlock = 0x40000b40 );
PROVIDE( spi_flash_erase_range = 0x40000b4c );
PROVIDE( spi_flash_erase_sector = 0x40000b58 );
PROVIDE( spi_flash_write = 0x40000b64 );
PROVIDE( spi_flash_read = 0x40000b70 );
PROVIDE( spi_flash_write_encrypted = 0x40000b7c );
PROVIDE( spi_flash_read_encrypted = 0x40000b88 );
PROVIDE( spi_flash_mmap_os_func_set = 0x40000b94 );
PROVIDE( spi_flash_mmap_page_num_init = 0x40000ba0 );
PROVIDE( spi_flash_mmap = 0x40000bac );
PROVIDE( spi_flash_mmap_pages = 0x40000bb8 );
PROVIDE( spi_flash_munmap = 0x40000bc4 );
PROVIDE( spi_flash_mmap_dump = 0x40000bd0 );
PROVIDE( spi_flash_check_and_flush_cache = 0x40000bdc );
PROVIDE( spi_flash_mmap_get_free_pages = 0x40000be8 );
PROVIDE( spi_flash_cache2phys = 0x40000bf4 ); /* patched when XIP */
PROVIDE( spi_flash_phys2cache = 0x40000c00 ); /* patched when XIP */
PROVIDE( spi_flash_disable_cache = 0x40000c0c );
PROVIDE( spi_flash_restore_cache = 0x40000c18 );
PROVIDE( spi_flash_cache_enabled = 0x40000c24 );
PROVIDE( spi_flash_enable_cache = 0x40000c30 );
PROVIDE( spi_cache_mode_switch = 0x40000c3c );
PROVIDE( spi_common_set_dummy_output = 0x40000c48 );
PROVIDE( spi_common_set_flash_cs_timing = 0x40000c54 );
PROVIDE( esp_rom_spi_set_address_bit_len = 0x40000c60 );
PROVIDE( esp_enable_cache_flash_wrap = 0x40000c6c );
PROVIDE( SPILock = 0x40000c78 );
PROVIDE( SPIMasterReadModeCnfig = 0x40000c84 );
PROVIDE( SPI_Common_Command = 0x40000c90 );
PROVIDE( SPI_WakeUp = 0x40000c9c );
PROVIDE( SPI_block_erase = 0x40000ca8 );
PROVIDE( SPI_chip_erase = 0x40000cb4 );
PROVIDE( SPI_init = 0x40000cc0 );
PROVIDE( SPI_page_program = 0x40000ccc );
PROVIDE( SPI_read_data = 0x40000cd8 );
PROVIDE( SPI_sector_erase = 0x40000ce4 );
PROVIDE( SelectSpiFunction = 0x40000cf0 );
PROVIDE( SetSpiDrvs = 0x40000cfc );
PROVIDE( Wait_SPI_Idle = 0x40000d08 );
PROVIDE( spi_dummy_len_fix = 0x40000d14 );
PROVIDE( Disable_QMode = 0x40000d20 );
PROVIDE( Enable_QMode = 0x40000d2c );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_spiflash_legacy_funcs = 0x3fceffe8 );
PROVIDE( rom_spiflash_legacy_data = 0x3fceffe4 );
PROVIDE( g_flash_guard_ops = 0x3fceffec );


/***************************************
 Group hal_soc
 ***************************************/

/* Functions */
PROVIDE( spi_flash_hal_poll_cmd_done = 0x40000d38 );
PROVIDE( spi_flash_hal_device_config = 0x40000d44 );
PROVIDE( spi_flash_hal_configure_host_io_mode = 0x40000d50 );
PROVIDE( spi_flash_hal_common_command = 0x40000d5c );
PROVIDE( spi_flash_hal_read = 0x40000d68 );
PROVIDE( spi_flash_hal_erase_chip = 0x40000d74 );
PROVIDE( spi_flash_hal_erase_sector = 0x40000d80 );
PROVIDE( spi_flash_hal_erase_block = 0x40000d8c );
PROVIDE( spi_flash_hal_program_page = 0x40000d98 );
PROVIDE( spi_flash_hal_set_write_protect = 0x40000da4 );
PROVIDE( spi_flash_hal_host_idle = 0x40000db0 );


/***************************************
 Group spi_flash_chips
 ***************************************/

/* Functions */
PROVIDE( spi_flash_chip_generic_probe = 0x40000ed0 );
PROVIDE( spi_flash_chip_generic_detect_size = 0x40000edc );
PROVIDE( spi_flash_chip_generic_write = 0x40000ee8 );
PROVIDE( spi_flash_chip_generic_write_encrypted = 0x40000ef4 );
PROVIDE( spi_flash_chip_generic_set_write_protect = 0x40000f00 );
PROVIDE( spi_flash_common_write_status_16b_wrsr = 0x40000f0c );
PROVIDE( spi_flash_chip_generic_reset = 0x40000f18 );
PROVIDE( spi_flash_chip_generic_erase_chip = 0x40000f24 );
PROVIDE( spi_flash_chip_generic_erase_sector = 0x40000f30 );
PROVIDE( spi_flash_chip_generic_erase_block = 0x40000f3c );
PROVIDE( spi_flash_chip_generic_page_program = 0x40000f48 );
PROVIDE( spi_flash_chip_generic_get_write_protect = 0x40000f54 );
PROVIDE( spi_flash_common_read_status_16b_rdsr_rdsr2 = 0x40000f60 );
PROVIDE( spi_flash_chip_generic_read_reg = 0x40000f6c );
PROVIDE( spi_flash_chip_generic_yield = 0x40000f78 );
PROVIDE( spi_flash_generic_wait_host_idle = 0x40000f84 );
PROVIDE( spi_flash_chip_generic_wait_idle = 0x40000f90 );
PROVIDE( spi_flash_chip_generic_config_host_io_mode = 0x40000f9c );
PROVIDE( spi_flash_chip_generic_read = 0x40000fa8 );
PROVIDE( spi_flash_common_read_status_8b_rdsr2 = 0x40000fb4 );
PROVIDE( spi_flash_chip_generic_get_io_mode = 0x40000fc0 );
PROVIDE( spi_flash_common_read_status_8b_rdsr = 0x40000fcc );
PROVIDE( spi_flash_common_write_status_8b_wrsr = 0x40000fd8 );
PROVIDE( spi_flash_common_write_status_8b_wrsr2 = 0x40000fe4 );
PROVIDE( spi_flash_common_set_io_mode = 0x40000ff0 );
PROVIDE( spi_flash_chip_generic_set_io_mode = 0x40000ffc );
PROVIDE( spi_flash_chip_gd_get_io_mode = 0x40001008 );
PROVIDE( spi_flash_chip_gd_probe = 0x40001014 );
PROVIDE( spi_flash_chip_gd_set_io_mode = 0x40001020 );
/* Data (.data, .bss, .rodata) */
PROVIDE( spi_flash_chip_generic_config_data = 0x3fceffe0 );


/***************************************
 Group memspi_host
 ***************************************/

/* Functions */
PROVIDE( memspi_host_read_id_hs = 0x4000102c );
PROVIDE( memspi_host_read_status_hs = 0x40001038 );
PROVIDE( memspi_host_flush_cache = 0x40001044 );
PROVIDE( memspi_host_erase_chip = 0x40001050 );
PROVIDE( memspi_host_erase_sector = 0x4000105c );
PROVIDE( memspi_host_erase_block = 0x40001068 );
PROVIDE( memspi_host_program_page = 0x40001074 );
PROVIDE( memspi_host_read = 0x40001080 );
PROVIDE( memspi_host_set_write_protect = 0x4000108c );
PROVIDE( memspi_host_set_max_read_len = 0x40001098 );
PROVIDE( memspi_host_read_data_slicer = 0x400010a4 );
PROVIDE( memspi_host_write_data_slicer = 0x400010b0 );


/***************************************
 Group esp_flash
 ***************************************/

/* Functions */
PROVIDE( esp_flash_chip_driver_initialized = 0x400010bc );
PROVIDE( esp_flash_read_id = 0x400010c8 );
PROVIDE( esp_flash_get_size = 0x400010d4 );
PROVIDE( esp_flash_erase_chip = 0x400010e0 );
PROVIDE( rom_esp_flash_erase_region = 0x400010ec );
PROVIDE( esp_flash_get_chip_write_protect = 0x400010f8 );
PROVIDE( esp_flash_set_chip_write_protect = 0x40001104 );
PROVIDE( esp_flash_get_protectable_regions = 0x40001110 );
PROVIDE( esp_flash_get_protected_region = 0x4000111c );
PROVIDE( esp_flash_set_protected_region = 0x40001128 );
PROVIDE( esp_flash_read = 0x40001134 );
PROVIDE( rom_esp_flash_write = 0x40001140 );
PROVIDE( rom_esp_flash_write_encrypted = 0x4000114c );
PROVIDE( esp_flash_read_encrypted = 0x40001158 );
PROVIDE( esp_flash_get_io_mode = 0x40001164 );
PROVIDE( esp_flash_set_io_mode = 0x40001170 );
PROVIDE( spi_flash_boot_attach = 0x4000117c );
PROVIDE( spi_flash_dump_counters = 0x40001188 );
PROVIDE( spi_flash_get_counters = 0x40001194 );
PROVIDE( spi_flash_op_counters_config = 0x400011a0 );
PROVIDE( spi_flash_reset_counters = 0x400011ac );
PROVIDE( esp_flash_read_chip_id = 0x400011b8 );
PROVIDE( detect_spi_flash_chip = 0x400011c4 );
PROVIDE( esp_rom_spiflash_write_disable = 0x400011d0 );
/* Data (.data, .bss, .rodata) */
PROVIDE( esp_flash_default_chip = 0x3fceffdc );
PROVIDE( esp_flash_api_funcs = 0x3fceffd8 );


/***************************************
 Group cache
 ***************************************/

/* Functions */
PROVIDE( Cache_Get_ICache_Line_Size = 0x400015fc );
PROVIDE( Cache_Get_DCache_Line_Size = 0x40001608 );
PROVIDE( Cache_Get_Mode = 0x40001614 );
PROVIDE( Cache_Set_ICache_Mode = 0x40001620 );
PROVIDE( Cache_Set_DCache_Mode = 0x4000162c );
PROVIDE( Cache_Address_Through_ICache = 0x40001638 );
PROVIDE( Cache_Address_Through_DCache = 0x40001644 );
PROVIDE( Cache_Set_Default_Mode = 0x40001650 );
PROVIDE( Cache_Enable_Default_ICache_Mode = 0x4000165c );
PROVIDE( ROM_Boot_Cache_Init = 0x40001668 );
PROVIDE( Cache_Invalidate_ICache_Items = 0x40001674 );
PROVIDE( Cache_Invalidate_DCache_Items = 0x40001680 );
PROVIDE( Cache_Clean_Items = 0x4000168c );
PROVIDE( Cache_WriteBack_Items = 0x40001698 );
PROVIDE( Cache_Op_Addr = 0x400016a4 );
PROVIDE( Cache_Invalidate_Addr = 0x400016b0 );
PROVIDE( Cache_Clean_Addr = 0x400016bc );
PROVIDE( rom_Cache_WriteBack_Addr = 0x400016c8 );
PROVIDE( Cache_Invalidate_ICache_All = 0x400016d4 );
PROVIDE( Cache_Invalidate_DCache_All = 0x400016e0 );
PROVIDE( Cache_Clean_All = 0x400016ec );
PROVIDE( Cache_WriteBack_All = 0x400016f8 );
PROVIDE( Cache_Mask_All = 0x40001704 );
PROVIDE( Cache_UnMask_Dram0 = 0x40001710 );
PROVIDE( Cache_Suspend_ICache_Autoload = 0x4000171c );
PROVIDE( Cache_Resume_ICache_Autoload = 0x40001728 );
PROVIDE( Cache_Suspend_DCache_Autoload = 0x40001734 );
PROVIDE( Cache_Resume_DCache_Autoload = 0x40001740 );
PROVIDE( Cache_Start_ICache_Preload = 0x4000174c );
PROVIDE( Cache_ICache_Preload_Done = 0x40001758 );
PROVIDE( Cache_End_ICache_Preload = 0x40001764 );
PROVIDE( Cache_Start_DCache_Preload = 0x40001770 );
PROVIDE( Cache_DCache_Preload_Done = 0x4000177c );
PROVIDE( Cache_End_DCache_Preload = 0x40001788 );
PROVIDE( Cache_Config_ICache_Autoload = 0x40001794 );
PROVIDE( Cache_Config_ICache_Region_Autoload = 0x400017a0 );
PROVIDE( Cache_Enable_ICache_Autoload = 0x400017ac );
PROVIDE( Cache_Disable_ICache_Autoload = 0x400017b8 );
PROVIDE( Cache_Config_DCache_Autoload = 0x400017c4 );
PROVIDE( Cache_Config_DCache_Region_Autoload = 0x400017d0 );
PROVIDE( Cache_Enable_DCache_Autoload = 0x400017dc );
PROVIDE( Cache_Disable_DCache_Autoload = 0x400017e8 );
PROVIDE( Cache_Enable_ICache_PreLock = 0x400017f4 );
PROVIDE( Cache_Disable_ICache_PreLock = 0x40001800 );
PROVIDE( Cache_Lock_ICache_Items = 0x4000180c );
PROVIDE( Cache_Unlock_ICache_Items = 0x40001818 );
PROVIDE( Cache_Enable_DCache_PreLock = 0x40001824 );
PROVIDE( Cache_Disable_DCache_PreLock = 0x40001830 );
PROVIDE( Cache_Lock_DCache_Items = 0x4000183c );
PROVIDE( Cache_Unlock_DCache_Items = 0x40001848 );
PROVIDE( Cache_Lock_Addr = 0x40001854 );
PROVIDE( Cache_Unlock_Addr = 0x40001860 );
PROVIDE( Cache_Disable_ICache = 0x4000186c );
PROVIDE( Cache_Enable_ICache = 0x40001878 );
PROVIDE( Cache_Disable_DCache = 0x40001884 );
PROVIDE( Cache_Enable_DCache = 0x40001890 );
PROVIDE( rom_Cache_Suspend_ICache = 0x4000189c );
PROVIDE( Cache_Resume_ICache = 0x400018a8 );
PROVIDE( rom_Cache_Suspend_DCache = 0x400018b4 );
PROVIDE( Cache_Resume_DCache = 0x400018c0 );
PROVIDE( Cache_Occupy_Items = 0x400018cc );
PROVIDE( Cache_Occupy_Addr = 0x400018d8 );
PROVIDE( rom_Cache_Freeze_ICache_Enable = 0x400018e4 );
PROVIDE( Cache_Freeze_ICache_Disable = 0x400018f0 );
PROVIDE( rom_Cache_Freeze_DCache_Enable = 0x400018fc );
PROVIDE( Cache_Freeze_DCache_Disable = 0x40001908 );
PROVIDE( Cache_Set_IDROM_MMU_Size = 0x40001914 );
PROVIDE( flash2spiram_instruction_offset = 0x40001920 );
PROVIDE( flash2spiram_rodata_offset = 0x4000192c );
PROVIDE( flash_instr_rodata_start_page = 0x40001938 );
PROVIDE( flash_instr_rodata_end_page = 0x40001944 );
PROVIDE( Cache_Set_IDROM_MMU_Info = 0x40001950 );
PROVIDE( Cache_Get_IROM_MMU_End = 0x4000195c );
PROVIDE( Cache_Get_DROM_MMU_End = 0x40001968 );
PROVIDE( Cache_Owner_Init = 0x40001974 );
PROVIDE( Cache_Occupy_ICache_MEMORY = 0x40001980 );
PROVIDE( Cache_Occupy_DCache_MEMORY = 0x4000198c );
PROVIDE( Cache_MMU_Init = 0x40001998 );
PROVIDE( Cache_Ibus_MMU_Set = 0x400019a4 );
PROVIDE( Cache_Dbus_MMU_Set = 0x400019b0 );
PROVIDE( rom_Cache_Count_Flash_Pages = 0x400019bc );
PROVIDE( Cache_Flash_To_SPIRAM_Copy = 0x400019c8 );
PROVIDE( Cache_Travel_Tag_Memory = 0x400019d4 );
PROVIDE( Cache_Travel_Tag_Memory2 = 0x400019e0 );
PROVIDE( Cache_Get_Virtual_Addr = 0x400019ec );
PROVIDE( Cache_Get_Memory_BaseAddr = 0x400019f8 );
PROVIDE( Cache_Get_Memory_Addr = 0x40001a04 );
PROVIDE( Cache_Get_Memory_value = 0x40001a10 );
PROVIDE( rom_config_instruction_cache_mode = 0x40001a1c );
PROVIDE( rom_config_data_cache_mode = 0x40001a28 );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_cache_op_cb = 0x3fceffc8 );
PROVIDE( rom_cache_internal_table_ptr = 0x3fceffc4 );


/***************************************
 Group clock
 ***************************************/

/* Functions */
PROVIDE( ets_get_apb_freq = 0x40001a34 );
PROVIDE( ets_get_cpu_frequency = 0x40001a40 );
PROVIDE( ets_update_cpu_frequency = 0x40001a4c );
PROVIDE( ets_get_printf_channel = 0x40001a58 );
PROVIDE( ets_get_xtal_div = 0x40001a64 );
PROVIDE( ets_set_xtal_div = 0x40001a70 );
PROVIDE( ets_get_xtal_freq = 0x40001a7c );


/***************************************
 Group gpio
 ***************************************/

/* Functions */
PROVIDE( gpio_input_get = 0x40001a88 );
PROVIDE( gpio_matrix_in = 0x40001a94 );
PROVIDE( gpio_matrix_out = 0x40001aa0 );
/* gpio_output_disable = 0x40001aac; */
/* gpio_output_enable = 0x40001ab8; */
PROVIDE( gpio_output_set = 0x40001ac4 );
PROVIDE( gpio_pad_hold = 0x40001ad0 );
PROVIDE( gpio_pad_input_disable = 0x40001adc );
PROVIDE( gpio_pad_input_enable = 0x40001ae8 );
PROVIDE( gpio_pad_pulldown = 0x40001af4 );
PROVIDE( gpio_pad_pullup = 0x40001b00 );
PROVIDE( gpio_pad_select_gpio = 0x40001b0c );
PROVIDE( gpio_pad_set_drv = 0x40001b18 );
PROVIDE( gpio_pad_unhold = 0x40001b24 );
PROVIDE( gpio_pin_wakeup_disable = 0x40001b30 );
PROVIDE( gpio_pin_wakeup_enable = 0x40001b3c );
PROVIDE( gpio_bypass_matrix_in = 0x40001b48 );


/***************************************
 Group interrupts
 ***************************************/

/* Functions */
PROVIDE( intr_matrix_set = 0x40001b54 );
PROVIDE( ets_intr_lock = 0x40001b60 );
PROVIDE( ets_intr_unlock = 0x40001b6c );
PROVIDE( ets_isr_attach = 0x40001b78 );
PROVIDE( ets_isr_mask = 0x40001b84 );
PROVIDE( ets_isr_unmask = 0x40001b90 );


/***************************************
 Group xtos
 ***************************************/

/* Functions */
PROVIDE( xthal_bcopy = 0x40001b9c );
PROVIDE( xthal_memcpy = 0x40001ba8 );
PROVIDE( xthal_get_ccompare = 0x40001bb4 );
PROVIDE( xthal_set_ccompare = 0x40001bc0 );
PROVIDE( xthal_get_ccount = 0x40001bcc );
PROVIDE( xthal_get_interrupt = 0x40001bd8 );
PROVIDE( xthal_set_intclear = 0x40001be4 );
PROVIDE( _xtos_ints_off = 0x40001bf0 );
PROVIDE( _xtos_ints_on = 0x40001bfc );
PROVIDE( _xtos_restore_intlevel = 0x40001c08 );
PROVIDE( _xtos_set_exception_handler = 0x40001c14 );
PROVIDE( _xtos_set_interrupt_handler = 0x40001c20 );
PROVIDE( _xtos_set_interrupt_handler_arg = 0x40001c2c );
PROVIDE( _xtos_set_intlevel = 0x40001c38 );
PROVIDE( _xtos_set_vpri = 0x40001c44 );


/***************************************
 Group crypto
 ***************************************/

/* Functions */
PROVIDE( md5_vector = 0x40001c50 );
PROVIDE( MD5Init = 0x40001c5c );
PROVIDE( MD5Update = 0x40001c68 );
PROVIDE( MD5Final = 0x40001c74 );
PROVIDE( hmac_md5_vector = 0x40001c80 );
PROVIDE( hmac_md5 = 0x40001c8c );
PROVIDE( crc32_le = 0x40001c98 );
PROVIDE( crc32_be = 0x40001ca4 );
PROVIDE( crc16_le = 0x40001cb0 );
PROVIDE( crc16_be = 0x40001cbc );
PROVIDE( crc8_le = 0x40001cc8 );
PROVIDE( crc8_be = 0x40001cd4 );
PROVIDE( esp_crc8 = 0x40001ce0 );
PROVIDE( ets_sha_enable = 0x40001cec );
PROVIDE( ets_sha_disable = 0x40001cf8 );
PROVIDE( ets_sha_get_state = 0x40001d04 );
PROVIDE( ets_sha_init = 0x40001d10 );
PROVIDE( ets_sha_process = 0x40001d1c );
PROVIDE( ets_sha_starts = 0x40001d28 );
PROVIDE( ets_sha_update = 0x40001d34 );
PROVIDE( ets_sha_finish = 0x40001d40 );
PROVIDE( ets_sha_clone = 0x40001d4c );
PROVIDE( ets_hmac_enable = 0x40001d58 );
PROVIDE( ets_hmac_disable = 0x40001d64 );
PROVIDE( ets_hmac_calculate_message = 0x40001d70 );
PROVIDE( ets_hmac_calculate_downstream = 0x40001d7c );
PROVIDE( ets_hmac_invalidate_downstream = 0x40001d88 );
PROVIDE( ets_jtag_enable_temporarily = 0x40001d94 );
PROVIDE( ets_aes_enable = 0x40001da0 );
PROVIDE( ets_aes_disable = 0x40001dac );
PROVIDE( ets_aes_setkey = 0x40001db8 );
PROVIDE( ets_aes_block = 0x40001dc4 );
PROVIDE( ets_bigint_enable = 0x40001dd0 );
PROVIDE( ets_bigint_disable = 0x40001ddc );
PROVIDE( ets_bigint_multiply = 0x40001de8 );
PROVIDE( ets_bigint_modmult = 0x40001df4 );
PROVIDE( ets_bigint_modexp = 0x40001e00 );
PROVIDE( ets_bigint_wait_finish = 0x40001e0c );
PROVIDE( ets_bigint_getz = 0x40001e18 );
PROVIDE( ets_ds_enable = 0x40001e24 );
PROVIDE( ets_ds_disable = 0x40001e30 );
PROVIDE( ets_ds_start_sign = 0x40001e3c );
PROVIDE( ets_ds_is_busy = 0x40001e48 );
PROVIDE( ets_ds_finish_sign = 0x40001e54 );
PROVIDE( ets_ds_encrypt_params = 0x40001e60 );
PROVIDE( ets_aes_setkey_dec = 0x40001e6c );
PROVIDE( ets_aes_setkey_enc = 0x40001e78 );
PROVIDE( ets_mgf1_sha256 = 0x40001e84 );


/***************************************
 Group efuse
 ***************************************/

/* Functions */
PROVIDE( ets_efuse_read = 0x40001e90 );
PROVIDE( ets_efuse_program = 0x40001e9c );
PROVIDE( ets_efuse_clear_program_registers = 0x40001ea8 );
PROVIDE( ets_efuse_write_key = 0x40001eb4 );
PROVIDE( ets_efuse_get_read_register_address = 0x40001ec0 );
PROVIDE( ets_efuse_get_key_purpose = 0x40001ecc );
PROVIDE( ets_efuse_key_block_unused = 0x40001ed8 );
PROVIDE( ets_efuse_find_unused_key_block = 0x40001ee4 );
PROVIDE( ets_efuse_rs_calculate = 0x40001ef0 );
PROVIDE( ets_efuse_count_unused_key_blocks = 0x40001efc );
PROVIDE( ets_efuse_secure_boot_enabled = 0x40001f08 );
PROVIDE( ets_efuse_secure_boot_aggressive_revoke_enabled = 0x40001f14 );
PROVIDE( ets_efuse_cache_encryption_enabled = 0x40001f20 );
PROVIDE( ets_efuse_download_modes_disabled = 0x40001f2c );
PROVIDE( ets_efuse_find_purpose = 0x40001f38 );
PROVIDE( ets_efuse_flash_opi_5pads_power_sel_vddspi = 0x40001f44 );
PROVIDE( ets_efuse_force_send_resume = 0x40001f50 );
PROVIDE( ets_efuse_get_flash_delay_us = 0x40001f5c );
PROVIDE( ets_efuse_get_mac = 0x40001f68 );
PROVIDE( ets_efuse_get_spiconfig = 0x40001f74 );
PROVIDE( ets_efuse_usb_print_is_disabled = 0x40001f80 );
/*ets_efuse_get_uart_print_channel = 0x40001f8c;*/
PROVIDE( ets_efuse_usb_serial_jtag_print_is_disabled = 0x40001f8c );
PROVIDE( ets_efuse_get_uart_print_control = 0x40001f98 );
PROVIDE( ets_efuse_get_wp_pad = 0x40001fa4 );
PROVIDE( ets_efuse_legacy_spi_boot_mode_disabled = 0x40001fb0 );
PROVIDE( ets_efuse_security_download_modes_enabled = 0x40001fbc );
PROVIDE( ets_efuse_set_timing = 0x40001fc8 );
PROVIDE( ets_efuse_jtag_disabled = 0x40001fd4 );
PROVIDE( ets_efuse_usb_download_mode_disabled = 0x40001fe0 );
PROVIDE( ets_efuse_usb_module_disabled = 0x40001fec );
PROVIDE( ets_efuse_usb_device_disabled = 0x40001ff8 );
PROVIDE( ets_efuse_flash_octal_mode = 0x40002004 );
PROVIDE( ets_efuse_ecc_en = 0x40002010 );
PROVIDE( ets_efuse_ecc_flash_page_size = 0x4000201c );
PROVIDE( ets_efuse_ecc_16to17_mode = 0x40002028 );


/***************************************
 Group ecc
 ***************************************/

/* Functions */
PROVIDE( ets_ecc_flash_enable = 0x40002034 );
PROVIDE( ets_ecc_flash_enable_all = 0x40002040 );
PROVIDE( ets_ecc_flash_disable = 0x4000204c );
PROVIDE( ets_ecc_flash_disable_all = 0x40002058 );
PROVIDE( ets_ecc_get_flash_page_size = 0x40002064 );
PROVIDE( ets_ecc_set_flash_page_size = 0x40002070 );
PROVIDE( ets_ecc_set_flash_byte_mode = 0x4000207c );
PROVIDE( ets_ecc_get_flash_byte_mode = 0x40002088 );
PROVIDE( ets_ecc_set_flash_range = 0x40002094 );
PROVIDE( ets_ecc_get_flash_range = 0x400020a0 );
PROVIDE( ets_ecc_sram_enable = 0x400020ac );
PROVIDE( ets_ecc_sram_disable = 0x400020b8 );
PROVIDE( ets_ecc_sram_enable_all = 0x400020c4 );
PROVIDE( ets_ecc_sram_disable_all = 0x400020d0 );
PROVIDE( ets_ecc_get_sram_page_size = 0x400020dc );
PROVIDE( ets_ecc_set_sram_page_size = 0x400020e8 );
PROVIDE( ets_ecc_get_sram_byte_mode = 0x400020f4 );
PROVIDE( ets_ecc_set_sram_byte_mode = 0x40002100 );
PROVIDE( ets_ecc_set_sram_range = 0x4000210c );
PROVIDE( ets_ecc_get_sram_range = 0x40002118 );
/* Data (.data, .bss, .rodata) */
PROVIDE( ets_ecc_table_ptr = 0x3fceffc0 );


/***************************************
 Group secureboot
 ***************************************/

/* Functions */
PROVIDE( ets_emsa_pss_verify = 0x40002124 );
PROVIDE( ets_rsa_pss_verify = 0x40002130 );
PROVIDE( ets_secure_boot_verify_bootloader_with_keys = 0x4000213c );
PROVIDE( ets_secure_boot_verify_signature = 0x40002148 );
PROVIDE( ets_secure_boot_read_key_digests = 0x40002154 );
PROVIDE( ets_secure_boot_revoke_public_key_digest = 0x40002160 );


/***************************************
 Group usb_uart
 ***************************************/

/* Functions */
PROVIDE( usb_uart_otg_rx_one_char = 0x400025a4 );
PROVIDE( usb_uart_otg_rx_one_char_block = 0x400025b0 );
PROVIDE( usb_uart_otg_tx_flush = 0x400025bc );
PROVIDE( usb_uart_otg_tx_one_char = 0x400025c8 );
PROVIDE( usb_uart_device_rx_one_char = 0x400025d4 );
PROVIDE( usb_uart_device_rx_one_char_block = 0x400025e0 );
PROVIDE( usb_uart_device_tx_flush = 0x400025ec );
PROVIDE( usb_uart_device_tx_one_char = 0x400025f8 );
PROVIDE( Uart_Init_USB = 0x40002604 );
/* Data (.data, .bss, .rodata) */
PROVIDE( uart_acm_dev = 0x3fceffbc );
PROVIDE( g_uart_print = 0x3fceffb9 );
PROVIDE( g_usb_print = 0x3fceffb8 );


/***************************************
 Group usb_module
 ***************************************/

/* Functions */
PROVIDE( cdc_acm_class_handle_req = 0x40002610 );
PROVIDE( cdc_acm_init = 0x4000261c );
PROVIDE( cdc_acm_fifo_fill = 0x40002628 );
PROVIDE( cdc_acm_rx_fifo_cnt = 0x40002634 );
PROVIDE( cdc_acm_fifo_read = 0x40002640 );
PROVIDE( cdc_acm_irq_tx_enable = 0x4000264c );
PROVIDE( cdc_acm_irq_tx_disable = 0x40002658 );
PROVIDE( cdc_acm_irq_state_enable = 0x40002664 );
PROVIDE( cdc_acm_irq_state_disable = 0x40002670 );
PROVIDE( cdc_acm_irq_tx_ready = 0x4000267c );
PROVIDE( cdc_acm_irq_rx_enable = 0x40002688 );
PROVIDE( cdc_acm_irq_rx_disable = 0x40002694 );
PROVIDE( cdc_acm_irq_rx_ready = 0x400026a0 );
PROVIDE( cdc_acm_irq_is_pending = 0x400026ac );
PROVIDE( cdc_acm_irq_callback_set = 0x400026b8 );
PROVIDE( cdc_acm_line_ctrl_set = 0x400026c4 );
PROVIDE( cdc_acm_line_ctrl_get = 0x400026d0 );
PROVIDE( cdc_acm_poll_out = 0x400026dc );
PROVIDE( chip_usb_dw_did_persist = 0x400026e8 );
PROVIDE( chip_usb_dw_init = 0x400026f4 );
PROVIDE( chip_usb_detach = 0x40002700 );
PROVIDE( chip_usb_dw_prepare_persist = 0x4000270c );
PROVIDE( chip_usb_get_persist_flags = 0x40002718 );
PROVIDE( chip_usb_set_persist_flags = 0x40002724 );
PROVIDE( cpio_start = 0x40002730 );
PROVIDE( cpio_feed = 0x4000273c );
PROVIDE( cpio_done = 0x40002748 );
PROVIDE( cpio_destroy = 0x40002754 );
PROVIDE( dfu_flash_init = 0x40002760 );
PROVIDE( dfu_flash_erase = 0x4000276c );
PROVIDE( dfu_flash_program = 0x40002778 );
PROVIDE( dfu_flash_read = 0x40002784 );
PROVIDE( dfu_flash_attach = 0x40002790 );
PROVIDE( dfu_cpio_callback = 0x4000279c );
PROVIDE( dfu_updater_get_err = 0x400027a8 );
PROVIDE( dfu_updater_clear_err = 0x400027b4 );
PROVIDE( dfu_updater_enable = 0x400027c0 );
PROVIDE( dfu_updater_begin = 0x400027cc );
PROVIDE( dfu_updater_feed = 0x400027d8 );
PROVIDE( dfu_updater_end = 0x400027e4 );
PROVIDE( dfu_updater_set_raw_addr = 0x400027f0 );
PROVIDE( dfu_updater_flash_read = 0x400027fc );
PROVIDE( usb_dc_prepare_persist = 0x40002808 );
PROVIDE( usb_dw_isr_handler = 0x40002814 );
PROVIDE( usb_dc_attach = 0x40002820 );
PROVIDE( usb_dc_detach = 0x4000282c );
PROVIDE( usb_dc_reset = 0x40002838 );
PROVIDE( usb_dc_set_address = 0x40002844 );
PROVIDE( usb_dc_ep_check_cap = 0x40002850 );
PROVIDE( usb_dc_ep_configure = 0x4000285c );
PROVIDE( usb_dc_ep_set_stall = 0x40002868 );
PROVIDE( usb_dc_ep_clear_stall = 0x40002874 );
PROVIDE( usb_dc_ep_halt = 0x40002880 );
PROVIDE( usb_dc_ep_is_stalled = 0x4000288c );
PROVIDE( usb_dc_ep_enable = 0x40002898 );
PROVIDE( usb_dc_ep_disable = 0x400028a4 );
PROVIDE( usb_dc_ep_flush = 0x400028b0 );
PROVIDE( usb_dc_ep_write_would_block = 0x400028bc );
PROVIDE( usb_dc_ep_write = 0x400028c8 );
PROVIDE( usb_dc_ep_read_wait = 0x400028d4 );
PROVIDE( usb_dc_ep_read_continue = 0x400028e0 );
PROVIDE( usb_dc_ep_read = 0x400028ec );
PROVIDE( usb_dc_ep_set_callback = 0x400028f8 );
PROVIDE( usb_dc_set_status_callback = 0x40002904 );
PROVIDE( usb_dc_ep_mps = 0x40002910 );
PROVIDE( usb_dc_check_poll_for_interrupts = 0x4000291c );
PROVIDE( mac_addr_to_serial_str_desc = 0x40002928 );
PROVIDE( usb_set_current_descriptor = 0x40002934 );
PROVIDE( usb_get_descriptor = 0x40002940 );
PROVIDE( usb_dev_resume = 0x4000294c );
PROVIDE( usb_dev_get_configuration = 0x40002958 );
PROVIDE( usb_set_config = 0x40002964 );
PROVIDE( usb_deconfig = 0x40002970 );
PROVIDE( usb_enable = 0x4000297c );
PROVIDE( usb_disable = 0x40002988 );
PROVIDE( usb_write_would_block = 0x40002994 );
PROVIDE( usb_write = 0x400029a0 );
PROVIDE( usb_read = 0x400029ac );
PROVIDE( usb_ep_set_stall = 0x400029b8 );
PROVIDE( usb_ep_clear_stall = 0x400029c4 );
PROVIDE( usb_ep_read_wait = 0x400029d0 );
PROVIDE( usb_ep_read_continue = 0x400029dc );
PROVIDE( usb_transfer_ep_callback = 0x400029e8 );
PROVIDE( usb_transfer = 0x400029f4 );
PROVIDE( usb_cancel_transfer = 0x40002a00 );
PROVIDE( usb_transfer_sync = 0x40002a0c );
PROVIDE( usb_dfu_set_detach_cb = 0x40002a18 );
PROVIDE( dfu_class_handle_req = 0x40002a24 );
PROVIDE( dfu_status_cb = 0x40002a30 );
PROVIDE( dfu_custom_handle_req = 0x40002a3c );
PROVIDE( usb_dfu_init = 0x40002a48 );
PROVIDE( usb_dfu_force_detach = 0x40002a54 );
PROVIDE( usb_dev_deinit = 0x40002a60 );
PROVIDE( usb_dw_ctrl_deinit = 0x40002a6c );
/* Data (.data, .bss, .rodata) */
PROVIDE( rom_usb_osglue = 0x3fceffac );


/***************************************
 Group bluetooth
 ***************************************/

/* Data (.data, .bss, .rodata) */
PROVIDE( bt_rf_coex_cfg_p = 0x3fceffa8 );
PROVIDE( bt_rf_coex_hooks_p = 0x3fceffa4 );
PROVIDE( btdm_env_p = 0x3fceffa0 );
PROVIDE( g_rw_controller_task_handle = 0x3fceff9c );
PROVIDE( g_rw_init_sem = 0x3fceff98 );
PROVIDE( g_rw_schd_queue = 0x3fceff94 );
PROVIDE( lld_init_env = 0x3fceff90 );
PROVIDE( lld_rpa_renew_env = 0x3fceff8c );
PROVIDE( lld_scan_env = 0x3fceff88 );
PROVIDE( lld_scan_sync_env = 0x3fceff84 );
PROVIDE( lld_test_env = 0x3fceff80 );
PROVIDE( p_ble_util_buf_env = 0x3fceff7c );
PROVIDE( p_lld_env = 0x3fceff78 );
PROVIDE( p_llm_env = 0x3fceff74 );
PROVIDE( r_h4tl_eif_p = 0x3fceff70 );
PROVIDE( r_hli_funcs_p = 0x3fceff6c );
PROVIDE( r_ip_funcs_p = 0x3fceff68 );
PROVIDE( r_modules_funcs_p = 0x3fceff64 );
PROVIDE( r_osi_funcs_p = 0x3fceff60 );
PROVIDE( r_plf_funcs_p = 0x3fceff5c );
PROVIDE( vhci_env_p = 0x3fceff58 );
PROVIDE( aa_gen = 0x3fceff54 );
PROVIDE( aes_env = 0x3fceff48 );
PROVIDE( bt_rf_coex_cfg_cb = 0x3fcefef8 );
PROVIDE( btdm_pwr_state = 0x3fcefef4 );
PROVIDE( btdm_slp_err = 0x3fcefef0 );
PROVIDE( ecc_env = 0x3fcefee8 );
PROVIDE( esp_handler = 0x3fcefee0 );
PROVIDE( esp_vendor_cmd = 0x3fcefed8 );
PROVIDE( g_adv_delay_dis = 0x3fcefed4 );
PROVIDE( g_conflict_elt = 0x3fcefed0 );
PROVIDE( g_eif_api = 0x3fcefec0 );
PROVIDE( g_event_empty = 0x3fcefeb4 );
PROVIDE( g_llc_state = 0x3fcefeaa );
PROVIDE( g_llm_state = 0x3fcefea9 );
PROVIDE( g_max_evt_env = 0x3fcefea7 );
PROVIDE( g_misc_state = 0x3fcefea6 );
PROVIDE( g_rma_rule_db = 0x3fcefe8a );
PROVIDE( g_rtp_rule_db = 0x3fcefe6e );
PROVIDE( g_scan_forever = 0x3fcefe6d );
PROVIDE( g_time_msb = 0x3fcefe6c );
PROVIDE( h4tl_env = 0x3fcefe44 );
PROVIDE( hci_env = 0x3fcefe21 );
PROVIDE( hci_ext_host = 0x3fcefe20 );
PROVIDE( hci_fc_env = 0x3fcefe18 );
PROVIDE( hci_tl_env = 0x3fcefdec );
PROVIDE( ke_env = 0x3fcefdbc );
PROVIDE( ke_event_env = 0x3fcefd7c );
PROVIDE( ke_task_env = 0x3fcefd00 );
PROVIDE( llc_env = 0x3fcefcd8 );
PROVIDE( lld_adv_env = 0x3fcefcb0 );
PROVIDE( lld_con_env = 0x3fcefc88 );
PROVIDE( lld_exp_sync_pos_tab = 0x3fcefc80 );
PROVIDE( lld_per_adv_env = 0x3fcefc58 );
PROVIDE( lld_sync_env = 0x3fcefc30 );
PROVIDE( llm_le_adv_flow_env = 0x3fcefc24 );
PROVIDE( rw_sleep_enable = 0x3fcefc20 );
PROVIDE( rwble_env = 0x3fcefc18 );
PROVIDE( rwip_env = 0x3fcefbfc );
PROVIDE( rwip_param = 0x3fcefbf0 );
PROVIDE( rwip_prog_delay = 0x3fcefbec );
PROVIDE( rwip_rf = 0x3fcefbb4 );
PROVIDE( sch_alarm_env = 0x3fcefbac );
PROVIDE( sch_arb_env = 0x3fcefb98 );
PROVIDE( sch_plan_env = 0x3fcefb90 );
PROVIDE( sch_prog_env = 0x3fcefa8c );
PROVIDE( sch_slice_env = 0x3fcefa2c );
PROVIDE( sch_slice_params = 0x3fcefa24 );
PROVIDE( timer_env = 0x3fcefa1c );
PROVIDE( unloaded_area = 0x3fcefa18 );
PROVIDE( vshci_state = 0x3fcefa14 );
PROVIDE( TASK_DESC_LLC = 0x3fcefa08 );
PROVIDE( TASK_DESC_LLM = 0x3fcef9fc );
PROVIDE( TASK_DESC_VSHCI = 0x3fcef9f0 );
PROVIDE( co_default_bdaddr = 0x3fcef9e8 );
PROVIDE( dbg_assert_block = 0x3fcef9e4 );
PROVIDE( g_bt_plf_log_level = 0x3fcef9e0 );
PROVIDE( hci_cmd_desc_tab_vs_esp = 0x3fcef9bc );
PROVIDE( hci_command_handler_tab_esp = 0x3fcef9a4 );
PROVIDE( privacy_en = 0x3fcef9a0 );
PROVIDE( sdk_cfg_priv_opts = 0x3fcef958 );
PROVIDE( BasePoint_x_256 = 0x3ff1ffdc );
PROVIDE( BasePoint_y_256 = 0x3ff1ffbc );
PROVIDE( DebugE256PublicKey_x = 0x3ff1ff9c );
PROVIDE( DebugE256PublicKey_y = 0x3ff1ff7c );
PROVIDE( DebugE256SecretKey = 0x3ff1ff5c );
PROVIDE( ECC_4Win_Look_up_table = 0x3ff1f7a0 );
PROVIDE( LLM_AA_CT1 = 0x3ff1f79a );
PROVIDE( LLM_AA_CT2 = 0x3ff1f798 );
PROVIDE( RF_TX_PW_CONV_TBL = 0x3ff1f790 );
PROVIDE( TASK_DESC_MISC = 0x3ff1f784 );
PROVIDE( adv_evt_prop2type = 0x3ff1f766 );
PROVIDE( adv_evt_type2prop = 0x3ff1f761 );
PROVIDE( aes_cmac_zero = 0x3ff1f751 );
PROVIDE( aes_k2_salt = 0x3ff1f741 );
PROVIDE( aes_k3_id64 = 0x3ff1f73c );
PROVIDE( aes_k3_salt = 0x3ff1f72c );
PROVIDE( aes_k4_id6 = 0x3ff1f728 );
PROVIDE( aes_k4_salt = 0x3ff1f718 );
PROVIDE( bigHexP256 = 0x3ff1f6ec );
PROVIDE( byte_tx_time = 0x3ff1f6e2 );
PROVIDE( co_null_bdaddr = 0x3ff1f6dc );
PROVIDE( co_phy_mask_to_rate = 0x3ff1f6d7 );
PROVIDE( co_phy_mask_to_value = 0x3ff1f6d2 );
PROVIDE( co_phy_to_rate = 0x3ff1f6ce );
PROVIDE( co_phy_value_to_mask = 0x3ff1f6ca );
PROVIDE( co_rate_to_byte_dur_us = 0x3ff1f6c5 );
PROVIDE( co_rate_to_phy = 0x3ff1f6c0 );
PROVIDE( co_rate_to_phy_mask = 0x3ff1f6bc );
PROVIDE( co_sca2ppm = 0x3ff1f6ac );
PROVIDE( coef_B = 0x3ff1f680 );
PROVIDE( connect_req_dur_tab = 0x3ff1f678 );
PROVIDE( ecc_Jacobian_InfinityPoint256 = 0x3ff1f5f4 );
PROVIDE( em_base_reg_lut = 0x3ff1f526 );
PROVIDE( fixed_tx_time = 0x3ff1f51e );
PROVIDE( h4tl_msgtype2hdrlen = 0x3ff1f518 );
PROVIDE( hci_cmd_desc_root_tab = 0x3ff1f4e8 );
PROVIDE( hci_cmd_desc_tab_ctrl_bb = 0x3ff1f47c );
PROVIDE( hci_cmd_desc_tab_info_par = 0x3ff1f44c );
PROVIDE( hci_cmd_desc_tab_le = 0x3ff1f0b0 );
PROVIDE( hci_cmd_desc_tab_lk_ctrl = 0x3ff1f098 );
PROVIDE( hci_cmd_desc_tab_stat_par = 0x3ff1f08c );
PROVIDE( hci_cmd_desc_tab_vs = 0x3ff1f050 );
PROVIDE( hci_evt_desc_tab = 0x3ff1f008 );
PROVIDE( hci_evt_le_desc_tab = 0x3ff1ef68 );
PROVIDE( hci_evt_le_desc_tab_esp = 0x3ff1ef60 );
PROVIDE( hci_rsvd_evt_msk = 0x3ff1ef57 );
PROVIDE( lld_aux_phy_to_rate = 0x3ff1ef54 );
PROVIDE( lld_init_max_aux_dur_tab = 0x3ff1ef4c );
PROVIDE( lld_scan_map_legacy_pdu_to_evt_type = 0x3ff1ef44 );
PROVIDE( lld_scan_max_aux_dur_tab = 0x3ff1ef3c );
PROVIDE( lld_sync_max_aux_dur_tab = 0x3ff1ef34 );
PROVIDE( llm_local_le_feats = 0x3ff1ef2c );
PROVIDE( llm_local_le_states = 0x3ff1ef24 );
PROVIDE( llm_local_supp_cmds = 0x3ff1eefc );
PROVIDE( maxSecretKey_256 = 0x3ff1eedc );
PROVIDE( max_data_tx_time = 0x3ff1eed4 );
PROVIDE( one_bits = 0x3ff1eec3 );
PROVIDE( rwip_coex_cfg = 0x3ff1eebe );
PROVIDE( rwip_priority = 0x3ff1eea8 );
PROVIDE( veryBigHexP256 = 0x3ff1ee5c );

/***************************************
 Group rom_pp
 ***************************************/

/* Functions */
PROVIDE( esp_pp_rom_version_get = 0x40005250 );
PROVIDE( RC_GetBlockAckTime = 0x4000525c );
PROVIDE( ebuf_list_remove = 0x40005268 );
/*esf_buf_alloc = 0x40005274;*/
/*esf_buf_alloc_dynamic = 0x40005280;*/
/*esf_buf_recycle = 0x4000528c;*/
PROVIDE( GetAccess = 0x40005298 );
PROVIDE( hal_mac_is_low_rate_enabled = 0x400052a4 );
PROVIDE( hal_mac_tx_get_blockack = 0x400052b0 );
/* hal_mac_tx_set_ppdu = 0x400052bc;*/
PROVIDE( ic_get_trc = 0x400052c8 );
/* ic_mac_deinit = 0x400052d4; */
/* ic_mac_init = 0x400052e0; */
PROVIDE( ic_interface_enabled = 0x400052ec );
PROVIDE( is_lmac_idle = 0x400052f8 );
/*lmacAdjustTimestamp = 0x40005304;*/
PROVIDE( lmacDiscardAgedMSDU = 0x40005310 );
/*lmacDiscardMSDU = 0x4000531c;*/
/*lmacEndFrameExchangeSequence = 0x40005328;*/
PROVIDE( lmacIsIdle = 0x40005334 );
PROVIDE( lmacIsLongFrame = 0x40005340 );
/*lmacMSDUAged = 0x4000534c;*/
PROVIDE( lmacPostTxComplete = 0x40005358 );
PROVIDE( lmacProcessAllTxTimeout = 0x40005364 );
PROVIDE( lmacProcessCollisions = 0x40005370 );
PROVIDE( lmacProcessRxSucData = 0x4000537c );
PROVIDE( lmacReachLongLimit = 0x40005388 );
PROVIDE( lmacReachShortLimit = 0x40005394 );
PROVIDE( lmacRecycleMPDU = 0x400053a0 );
PROVIDE( lmacRxDone = 0x400053ac );
/*lmacSetTxFrame = 0x400053b8;*/
PROVIDE( lmacTxDone = 0x400053c4 );
/*lmacTxFrame = 0x400053d0;*/
PROVIDE( mac_tx_set_duration = 0x400053dc );
/* mac_tx_set_htsig = 0x400053e8;*/
PROVIDE( mac_tx_set_plcp0 = 0x400053f4 );
/* mac_tx_set_plcp1 = 0x40005400;*/
PROVIDE( mac_tx_set_plcp2 = 0x4000540c );
/* pm_check_state = 0x40005418; */
PROVIDE( pm_disable_dream_timer = 0x40005424 );
PROVIDE( pm_disable_sleep_delay_timer = 0x40005430 );
/*pm_dream = 0x4000543c;*/
PROVIDE( pm_mac_wakeup = 0x40005448 );
PROVIDE( pm_mac_sleep = 0x40005454 );
PROVIDE( pm_enable_active_timer = 0x40005460 );
PROVIDE( pm_enable_sleep_delay_timer = 0x4000546c );
PROVIDE( pm_local_tsf_process = 0x40005478 );
//pm_set_beacon_filter = 0x40005484;
/*pm_is_in_wifi_slice_threshold = 0x40005490;*/
PROVIDE( pm_is_waked = 0x4000549c );
/*pm_keep_alive = 0x400054a8;*/
/* pm_on_beacon_rx = 0x400054b4; */
PROVIDE( pm_on_data_rx = 0x400054c0 );
PROVIDE( pm_on_tbtt = 0x400054cc );
/* pm_parse_beacon = 0x400054d8;*/
/* pm_process_tim = 0x400054e4; */
/*pm_rx_beacon_process = 0x400054f0;*/
/* pm_rx_data_process = 0x400054fc; */
/*pm_sleep = 0x40005508;*/
PROVIDE( pm_sleep_for = 0x40005514 );
/* pm_tbtt_process = 0x40005520; */
PROVIDE( ppAMPDU2Normal = 0x4000552c );
/*ppAssembleAMPDU = 0x40005538;*/
PROVIDE( ppCalFrameTimes = 0x40005544 );
PROVIDE( ppCalSubFrameLength = 0x40005550 );
/*ppCalTxAMPDULength = 0x4000555c;*/
PROVIDE( ppCheckTxAMPDUlength = 0x40005568 );
PROVIDE( ppDequeueRxq_Locked = 0x40005574 );
PROVIDE( ppDequeueTxQ = 0x40005580 );
PROVIDE( ppEmptyDelimiterLength = 0x4000558c );
PROVIDE( ppEnqueueRxq = 0x40005598 );
PROVIDE( ppEnqueueTxDone = 0x400055a4 );
PROVIDE( ppGetTxQFirstAvail_Locked = 0x400055b0 );
PROVIDE( ppGetTxframe = 0x400055bc );
/*ppMapTxQueue = 0x400055c8;*/
PROVIDE( ppProcessRxPktHdr = 0x400055e0 );
/*ppProcessTxQ = 0x400055ec;*/
PROVIDE( ppRecordBarRRC = 0x400055f8 );
PROVIDE( lmacRequestTxopQueue = 0x40005604 );
PROVIDE( lmacReleaseTxopQueue = 0x40005610 );
PROVIDE( ppRecycleAmpdu = 0x4000561c );
PROVIDE( ppRecycleRxPkt = 0x40005628 );
PROVIDE( ppResortTxAMPDU = 0x40005634 );
PROVIDE( ppResumeTxAMPDU = 0x40005640 );
/* ppRxFragmentProc = 0x4000564c; */
/* ppRxPkt = 0x40005658; */
/* ppRxProtoProc = 0x40005664; */
PROVIDE( ppSearchTxQueue = 0x40005670 );
PROVIDE( ppSearchTxframe = 0x4000567c );
PROVIDE( ppSelectNextQueue = 0x40005688 );
PROVIDE( ppSubFromAMPDU = 0x40005694 );
/* ppTask = 0x400056a0; */
PROVIDE( ppTxPkt = 0x400056ac );
PROVIDE( ppTxProtoProc = 0x400056b8 );
PROVIDE( ppTxqUpdateBitmap = 0x400056c4 );
/*pp_coex_tx_request = 0x400056d0;*/
PROVIDE( pp_hdrsize = 0x400056dc );
PROVIDE( pp_post = 0x400056e8 );
PROVIDE( pp_process_hmac_waiting_txq = 0x400056f4 );
PROVIDE( rcGetAmpduSched = 0x40005700 );
PROVIDE( rcUpdateRxDone = 0x4000570c );
PROVIDE( rc_get_trc = 0x40005718 );
PROVIDE( rc_get_trc_by_index = 0x40005724 );
PROVIDE( rcAmpduLowerRate = 0x40005730 );
PROVIDE( rcampduuprate = 0x4000573c );
PROVIDE( rcClearCurAMPDUSched = 0x40005748 );
PROVIDE( rcClearCurSched = 0x40005754 );
PROVIDE( rcClearCurStat = 0x40005760 );
/*rcGetSched = 0x4000576c;*/
PROVIDE( rcLowerSched = 0x40005778 );
PROVIDE( rcSetTxAmpduLimit = 0x40005784 );
/* rcTxUpdatePer = 0x40005790;*/
PROVIDE( rcUpdateAckSnr = 0x4000579c );
/*rcUpdateRate = 0x400057a8;*/
/* rcUpdateTxDone = 0x400057b4; */
/* rcUpdateTxDoneAmpdu2 = 0x400057c0;*/
PROVIDE( rcUpSched = 0x400057cc );
PROVIDE( rssi_margin = 0x400057d8 );
PROVIDE( rx11NRate2AMPDULimit = 0x400057e4 );
PROVIDE( TRC_AMPDU_PER_DOWN_THRESHOLD = 0x400057f0 );
PROVIDE( TRC_AMPDU_PER_UP_THRESHOLD = 0x400057fc );
PROVIDE( trc_calc_duration = 0x40005808 );
PROVIDE( trc_isTxAmpduOperational = 0x40005814 );
PROVIDE( trc_onAmpduOp = 0x40005820 );
PROVIDE( TRC_PER_IS_GOOD = 0x4000582c );
PROVIDE( trc_SetTxAmpduState = 0x40005838 );
PROVIDE( trc_tid_isTxAmpduOperational = 0x40005844 );
PROVIDE( trcAmpduSetState = 0x40005850 );
PROVIDE( wDevCheckBlockError = 0x4000585c );
/*wDev_AppendRxBlocks = 0x40005868;*/
PROVIDE( wDev_DiscardFrame = 0x40005874 );
PROVIDE( wDev_GetNoiseFloor = 0x40005880 );
PROVIDE( wDev_IndicateAmpdu = 0x4000588c );
/*wDev_IndicateFrame = 0x40005898;*/
PROVIDE( wdev_bank_store = 0x400058a4 );
PROVIDE( wdev_bank_load = 0x400058b0 );
PROVIDE( wdev_mac_reg_load = 0x400058bc );
PROVIDE( wdev_mac_reg_store = 0x400058c8 );
PROVIDE( wdev_mac_special_reg_load = 0x400058d4 );
PROVIDE( wdev_mac_special_reg_store = 0x400058e0 );
PROVIDE( wdev_mac_wakeup = 0x400058ec );
PROVIDE( wdev_mac_sleep = 0x400058f8 );
PROVIDE( hal_mac_is_dma_enable = 0x40005904 );
/* wDev_ProcessFiq = 0x40005910; */
/*wDev_ProcessRxSucData = 0x4000591c;*/
PROVIDE( wdevProcessRxSucDataAll = 0x40005928 );
PROVIDE( wdev_csi_len_align = 0x40005934 );
PROVIDE( ppDequeueTxDone_Locked = 0x40005940 );
/*ppProcTxDone = 0x4000594c;*/
/*pm_tx_data_done_process = 0x40005958;*/
PROVIDE( config_is_cache_tx_buf_enabled = 0x40005964 );
//ppMapWaitTxq = 0x40005970;
PROVIDE( ppProcessWaitingQueue = 0x4000597c );
PROVIDE( ppDisableQueue = 0x40005988 );
PROVIDE( pm_allow_tx = 0x40005994 );
PROVIDE( wdev_is_data_in_rxlist = 0x400059a0 );
PROVIDE( ppProcTxCallback = 0x400059ac );
/* Data (.data, .bss, .rodata) */
PROVIDE( our_instances_ptr = 0x3ff1ee58 );
PROVIDE( pTxRx = 0x3fcef954 );
PROVIDE( lmacConfMib_ptr = 0x3fcef950 );
PROVIDE( our_wait_eb = 0x3fcef94c );
PROVIDE( our_tx_eb = 0x3fcef948 );
PROVIDE( pp_wdev_funcs = 0x3fcef944 );
PROVIDE( g_osi_funcs_p = 0x3fcef940 );
PROVIDE( wDevCtrl_ptr = 0x3fcef93c );
PROVIDE( g_wdev_last_desc_reset_ptr = 0x3ff1ee54 );
PROVIDE( wDevMacSleep_ptr = 0x3fcef938 );
PROVIDE( g_lmac_cnt_ptr = 0x3fcef934 );
PROVIDE( our_controls_ptr = 0x3ff1ee50 );
PROVIDE( pp_sig_cnt_ptr = 0x3fcef930 );
PROVIDE( g_eb_list_desc_ptr = 0x3fcef92c );
PROVIDE( s_fragment_ptr = 0x3fcef928 );
PROVIDE( if_ctrl_ptr = 0x3fcef924 );
PROVIDE( g_intr_lock_mux = 0x3fcef920 );
PROVIDE( g_wifi_global_lock = 0x3fcef91c );
PROVIDE( s_wifi_queue = 0x3fcef918 );
PROVIDE( pp_task_hdl = 0x3fcef914 );
PROVIDE( s_pp_task_create_sem = 0x3fcef910 );
PROVIDE( s_pp_task_del_sem = 0x3fcef90c );
PROVIDE( g_wifi_menuconfig_ptr = 0x3fcef908 );
PROVIDE( xphyQueue = 0x3fcef904 );
PROVIDE( ap_no_lr_ptr = 0x3fcef900 );
PROVIDE( rc11BSchedTbl_ptr = 0x3fcef8fc );
PROVIDE( rc11NSchedTbl_ptr = 0x3fcef8f8 );
PROVIDE( rcLoRaSchedTbl_ptr = 0x3fcef8f4 );
PROVIDE( BasicOFDMSched_ptr = 0x3fcef8f0 );
PROVIDE( trc_ctl_ptr = 0x3fcef8ec );
PROVIDE( g_pm_cnt_ptr = 0x3fcef8e8 );
PROVIDE( g_pm_ptr = 0x3fcef8e4 );
PROVIDE( g_pm_cfg_ptr = 0x3fcef8e0 );
PROVIDE( g_esp_mesh_quick_funcs_ptr = 0x3fcef8dc );
PROVIDE( g_txop_queue_status_ptr = 0x3fcef8d8 );
PROVIDE( g_mac_sleep_en_ptr = 0x3fcef8d4 );
PROVIDE( g_mesh_is_root_ptr = 0x3fcef8d0 );
PROVIDE( g_mesh_topology_ptr = 0x3fcef8cc );
PROVIDE( g_mesh_init_ps_type_ptr = 0x3fcef8c8 );
PROVIDE( g_mesh_is_started_ptr = 0x3fcef8c4 );
PROVIDE( g_config_func = 0x3fcef8c0 );
PROVIDE( g_net80211_tx_func = 0x3fcef8bc );
PROVIDE( g_timer_func = 0x3fcef8b8 );
PROVIDE( s_michael_mic_failure_cb = 0x3fcef8b4 );
PROVIDE( wifi_sta_rx_probe_req = 0x3fcef8b0 );
PROVIDE( g_tx_done_cb_func = 0x3fcef8ac );
PROVIDE( g_per_conn_trc = 0x3fcef860 );
PROVIDE( s_encap_amsdu_func = 0x3fcef85c );


/***************************************
 Group rom_net80211
 ***************************************/

/* Functions */
PROVIDE( esp_net80211_rom_version_get = 0x400059b8 );
PROVIDE( ampdu_dispatch = 0x400059c4 );
PROVIDE( ampdu_dispatch_all = 0x400059d0 );
PROVIDE( ampdu_dispatch_as_many_as_possible = 0x400059dc );
PROVIDE( ampdu_dispatch_movement = 0x400059e8 );
PROVIDE( ampdu_dispatch_upto = 0x400059f4 );
PROVIDE( chm_is_at_home_channel = 0x40005a00 );
PROVIDE( cnx_node_is_existing = 0x40005a0c );
PROVIDE( cnx_node_search = 0x40005a18 );
PROVIDE( ic_ebuf_recycle_rx = 0x40005a24 );
PROVIDE( ic_ebuf_recycle_tx = 0x40005a30 );
PROVIDE( ic_reset_rx_ba = 0x40005a3c );
PROVIDE( ieee80211_align_eb = 0x40005a48 );
/* ieee80211_ampdu_reorder = 0x40005a54; */
PROVIDE( ieee80211_ampdu_start_age_timer = 0x40005a60 );
/* ieee80211_encap_esfbuf = 0x40005a6c; */
PROVIDE( ieee80211_is_tx_allowed = 0x40005a78 );
PROVIDE( ieee80211_output_pending_eb = 0x40005a84 );
/*ieee80211_output_process = 0x40005a90;*/
PROVIDE( ieee80211_set_tx_desc = 0x40005a9c );
/*sta_input = 0x40005aa8;*/
PROVIDE( wifi_get_macaddr = 0x40005ab4 );
PROVIDE( wifi_rf_phy_disable = 0x40005ac0 );
PROVIDE( wifi_rf_phy_enable = 0x40005acc );
PROVIDE( ic_ebuf_alloc = 0x40005ad8 );
/*ieee80211_classify = 0x40005ae4;*/
PROVIDE( ieee80211_copy_eb_header = 0x40005af0 );
PROVIDE( ieee80211_recycle_cache_eb = 0x40005afc );
PROVIDE( ieee80211_search_node = 0x40005b08 );
PROVIDE( roundup2 = 0x40005b14 );
PROVIDE( ieee80211_crypto_encap = 0x40005b20 );
/* ieee80211_crypto_decap = 0x40005b2c; */
/* ieee80211_decap = 0x40005b38; */
PROVIDE( ieee80211_set_tx_pti = 0x40005b44 );
PROVIDE( wifi_is_started = 0x40005b50 );
PROVIDE( ieee80211_gettid = 0x40005b5c );
/* Data (.data, .bss, .rodata) */
PROVIDE( net80211_funcs = 0x3fcef858 );
PROVIDE( g_scan = 0x3fcef854 );
PROVIDE( g_chm = 0x3fcef850 );
PROVIDE( g_ic_ptr = 0x3fcef84c );
PROVIDE( g_hmac_cnt_ptr = 0x3fcef848 );
PROVIDE( g_tx_cacheq_ptr = 0x3fcef844 );
PROVIDE( s_netstack_free = 0x3fcef840 );
PROVIDE( mesh_rxcb = 0x3fcef83c );
PROVIDE( sta_rxcb = 0x3fcef838 );


/***************************************
 Group rom_coexist
 ***************************************/

/* Functions */
PROVIDE( esp_coex_rom_version_get = 0x40005b68 );
PROVIDE( coex_bt_release = 0x40005b74 );
PROVIDE( coex_bt_request = 0x40005b80 );
PROVIDE( coex_core_ble_conn_dyn_prio_get = 0x40005b8c );
/*coex_core_event_duration_get = 0x40005b98;*/
PROVIDE( coex_core_pti_get = 0x40005ba4 );
PROVIDE( coex_core_release = 0x40005bb0 );
PROVIDE( coex_core_request = 0x40005bbc );
PROVIDE( coex_core_status_get = 0x40005bc8 );
/*coex_core_timer_idx_get = 0x40005bd4;*/
PROVIDE( coex_event_duration_get = 0x40005be0 );
PROVIDE( coex_hw_timer_disable = 0x40005bec );
PROVIDE( coex_hw_timer_enable = 0x40005bf8 );
PROVIDE( coex_hw_timer_set = 0x40005c04 );
PROVIDE( coex_schm_interval_set = 0x40005c10 );
PROVIDE( coex_schm_lock = 0x40005c1c );
PROVIDE( coex_schm_unlock = 0x40005c28 );
/*coex_status_get = 0x40005c34;*/
PROVIDE( coex_wifi_release = 0x40005c40 );
PROVIDE( esp_coex_ble_conn_dynamic_prio_get = 0x40005c4c );
/* Data (.data, .bss, .rodata) */
PROVIDE( coex_env_ptr = 0x3fcef834 );
PROVIDE( coex_pti_tab_ptr = 0x3fcef830 );
PROVIDE( coex_schm_env_ptr = 0x3fcef82c );
PROVIDE( coexist_funcs = 0x3fcef828 );
PROVIDE( g_coa_funcs_p = 0x3fcef824 );
PROVIDE( g_coex_param_ptr = 0x3fcef820 );


/***************************************
 Group rom_phy
 ***************************************/

/* Functions */
PROVIDE( phy_get_romfuncs = 0x40005c58 );
PROVIDE( rom_abs_temp = 0x40005c64 );
PROVIDE( rom_bb_bss_cbw40_dig = 0x40005c70 );
PROVIDE( rom_bb_wdg_test_en = 0x40005c7c );
PROVIDE( rom_bb_wdt_get_status = 0x40005c88 );
PROVIDE( rom_bb_wdt_int_enable = 0x40005c94 );
PROVIDE( rom_bb_wdt_rst_enable = 0x40005ca0 );
PROVIDE( rom_bb_wdt_timeout_clear = 0x40005cac );
PROVIDE( rom_cbw2040_cfg = 0x40005cb8 );
PROVIDE( rom_check_noise_floor = 0x40005cc4 );
PROVIDE( rom_chip_i2c_readReg = 0x40005cd0 );
PROVIDE( rom_chip_i2c_writeReg = 0x40005cdc );
PROVIDE( rom_dc_iq_est = 0x40005ce8 );
PROVIDE( rom_disable_agc = 0x40005cf4 );
PROVIDE( rom_en_pwdet = 0x40005d00 );
PROVIDE( rom_enable_agc = 0x40005d0c );
PROVIDE( rom_get_bbgain_db = 0x40005d18 );
PROVIDE( rom_get_data_sat = 0x40005d24 );
PROVIDE( rom_get_i2c_read_mask = 0x40005d30 );
PROVIDE( rom_get_pwctrl_correct = 0x40005d3c );
PROVIDE( rom_i2c_readReg = 0x40005d48 );
PROVIDE( rom_i2c_readReg_Mask = 0x40005d54 );
PROVIDE( rom_i2c_writeReg = 0x40005d60 );
PROVIDE( rom_i2c_writeReg_Mask = 0x40005d6c );
PROVIDE( rom_index_to_txbbgain = 0x40005d78 );
PROVIDE( rom_iq_est_disable = 0x40005d84 );
PROVIDE( rom_iq_est_enable = 0x40005d90 );
PROVIDE( rom_linear_to_db = 0x40005d9c );
PROVIDE( rom_loopback_mode_en = 0x40005da8 );
PROVIDE( rom_mhz2ieee = 0x40005db4 );
PROVIDE( rom_noise_floor_auto_set = 0x40005dc0 );
PROVIDE( rom_pbus_debugmode = 0x40005dcc );
PROVIDE( rom_pbus_force_mode = 0x40005dd8 );
PROVIDE( rom_pbus_force_test = 0x40005de4 );
PROVIDE( rom_pbus_rd = 0x40005df0 );
PROVIDE( rom_pbus_rd_addr = 0x40005dfc );
PROVIDE( rom_pbus_rd_shift = 0x40005e08 );
PROVIDE( rom_pbus_set_dco = 0x40005e14 );
PROVIDE( rom_pbus_set_rxgain = 0x40005e20 );
PROVIDE( rom_pbus_workmode = 0x40005e2c );
PROVIDE( rom_pbus_xpd_rx_off = 0x40005e38 );
PROVIDE( rom_pbus_xpd_rx_on = 0x40005e44 );
PROVIDE( rom_pbus_xpd_tx_off = 0x40005e50 );
PROVIDE( rom_pbus_xpd_tx_on = 0x40005e5c );
PROVIDE( rom_phy_byte_to_word = 0x40005e68 );
PROVIDE( rom_phy_disable_cca = 0x40005e74 );
PROVIDE( rom_phy_enable_cca = 0x40005e80 );
PROVIDE( rom_phy_get_noisefloor = 0x40005e8c );
PROVIDE( rom_phy_get_rx_freq = 0x40005e98 );
PROVIDE( rom_phy_set_bbfreq_init = 0x40005ea4 );
PROVIDE( rom_pow_usr = 0x40005eb0 );
PROVIDE( rom_pwdet_sar2_init = 0x40005ebc );
PROVIDE( rom_read_hw_noisefloor = 0x40005ec8 );
PROVIDE( rom_read_sar_dout = 0x40005ed4 );
PROVIDE( rom_set_cal_rxdc = 0x40005ee0 );
PROVIDE( rom_set_chan_cal_interp = 0x40005eec );
PROVIDE( rom_set_loopback_gain = 0x40005ef8 );
PROVIDE( rom_set_noise_floor = 0x40005f04 );
PROVIDE( rom_set_rxclk_en = 0x40005f10 );
PROVIDE( rom_set_tx_dig_gain = 0x40005f1c );
PROVIDE( rom_set_txcap_reg = 0x40005f28 );
PROVIDE( rom_set_txclk_en = 0x40005f34 );
PROVIDE( rom_spur_cal = 0x40005f40 );
PROVIDE( rom_spur_reg_write_one_tone = 0x40005f4c );
PROVIDE( rom_target_power_add_backoff = 0x40005f58 );
PROVIDE( rom_tx_pwctrl_bg_init = 0x40005f64 );
PROVIDE( rom_txbbgain_to_index = 0x40005f70 );
PROVIDE( rom_wifi_11g_rate_chg = 0x40005f7c );
PROVIDE( rom_write_gain_mem = 0x40005f88 );
PROVIDE( chip728_phyrom_version = 0x40005f94 );
PROVIDE( rom_disable_wifi_agc = 0x40005fa0 );
PROVIDE( rom_enable_wifi_agc = 0x40005fac );
PROVIDE( rom_bt_index_to_bb = 0x40005fb8 );
PROVIDE( rom_bt_bb_to_index = 0x40005fc4 );
PROVIDE( rom_spur_coef_cfg = 0x40005fd0 );
PROVIDE( rom_bb_bss_cbw40 = 0x40005fdc );
PROVIDE( rom_set_cca = 0x40005fe8 );
PROVIDE( rom_tx_paon_set = 0x40005ff4 );
PROVIDE( rom_i2cmst_reg_init = 0x40006000 );
PROVIDE( rom_iq_corr_enable = 0x4000600c );
PROVIDE( rom_fe_reg_init = 0x40006018 );
PROVIDE( rom_agc_reg_init = 0x40006024 );
PROVIDE( rom_bb_reg_init = 0x40006030 );
PROVIDE( rom_mac_enable_bb = 0x4000603c );
PROVIDE( rom_bb_wdg_cfg = 0x40006048 );
PROVIDE( rom_force_txon = 0x40006054 );
PROVIDE( rom_fe_txrx_reset = 0x40006060 );
PROVIDE( rom_set_rx_comp = 0x4000606c );
PROVIDE( rom_set_pbus_reg = 0x40006078 );
PROVIDE( rom_write_chan_freq = 0x40006084 );
PROVIDE( rom_phy_xpd_rf = 0x40006090 );
PROVIDE( rom_set_xpd_sar = 0x4000609c );
PROVIDE( rom_get_target_power_offset = 0x400060a8 );
PROVIDE( rom_write_txrate_power_offset = 0x400060b4 );
PROVIDE( rom_get_rate_fcc_index = 0x400060c0 );
PROVIDE( rom_get_rate_target_power = 0x400060cc );
PROVIDE( rom_pkdet_vol_start = 0x400060d8 );
PROVIDE( rom_read_sar2_code = 0x400060e4 );
PROVIDE( rom_get_sar2_vol = 0x400060f0 );
PROVIDE( rom_get_pll_vol = 0x400060fc );
PROVIDE( rom_get_phy_target_power = 0x40006108 );
PROVIDE( rom_temp_to_power = 0x40006114 );
PROVIDE( rom_phy_track_pll_cap = 0x40006120 );
PROVIDE( rom_phy_pwdet_always_en = 0x4000612c );
PROVIDE( rom_phy_pwdet_onetime_en = 0x40006138 );
PROVIDE( rom_get_i2c_mst0_mask = 0x40006144 );
PROVIDE( rom_get_i2c_hostid = 0x40006150 );
PROVIDE( rom_enter_critical_phy = 0x4000615c );
PROVIDE( rom_exit_critical_phy = 0x40006168 );
PROVIDE( rom_chip_i2c_readReg_org = 0x40006174 );
PROVIDE( rom_i2c_paral_set_mst0 = 0x40006180 );
PROVIDE( rom_i2c_paral_set_read = 0x4000618c );
PROVIDE( rom_i2c_paral_read = 0x40006198 );
PROVIDE( rom_i2c_paral_write = 0x400061a4 );
PROVIDE( rom_i2c_paral_write_num = 0x400061b0 );
PROVIDE( rom_i2c_paral_write_mask = 0x400061bc );
PROVIDE( rom_bb_bss_cbw40_ana = 0x400061c8 );
PROVIDE( rom_chan_to_freq = 0x400061d4 );
PROVIDE( rom_open_i2c_xpd = 0x400061e0 );
PROVIDE( rom_dac_rate_set = 0x400061ec );
PROVIDE( rom_tsens_read_init = 0x400061f8 );
PROVIDE( rom_tsens_code_read = 0x40006204 );
PROVIDE( rom_tsens_index_to_dac = 0x40006210 );
PROVIDE( rom_tsens_index_to_offset = 0x4000621c );
PROVIDE( rom_tsens_dac_cal = 0x40006228 );
PROVIDE( rom_code_to_temp = 0x40006234 );
PROVIDE( rom_write_pll_cap_mem = 0x40006240 );
PROVIDE( rom_pll_correct_dcap = 0x4000624c );
PROVIDE( rom_phy_en_hw_set_freq = 0x40006258 );
PROVIDE( rom_phy_dis_hw_set_freq = 0x40006264 );
PROVIDE( rom_pll_vol_cal = 0x40006270 );
PROVIDE( rom_wrtie_pll_cap = 0x4000627c );
PROVIDE( rom_set_tx_gain_mem = 0x40006288 );
PROVIDE( rom_bt_tx_dig_gain = 0x40006294 );
PROVIDE( rom_bt_get_tx_gain = 0x400062a0 );
PROVIDE( rom_get_chan_target_power = 0x400062ac );
PROVIDE( rom_get_tx_gain_value = 0x400062b8 );
PROVIDE( rom_wifi_tx_dig_gain = 0x400062c4 );
PROVIDE( rom_wifi_get_tx_gain = 0x400062d0 );
PROVIDE( rom_fe_i2c_reg_renew = 0x400062dc );
PROVIDE( rom_wifi_agc_sat_gain = 0x400062e8 );
PROVIDE( rom_i2c_master_reset = 0x400062f4 );
PROVIDE( rom_bt_filter_reg = 0x40006300 );
PROVIDE( rom_phy_bbpll_cal = 0x4000630c );
PROVIDE( rom_i2c_sar2_init_code = 0x40006318 );
PROVIDE( rom_phy_param_addr = 0x40006324 );
PROVIDE( rom_phy_reg_init = 0x40006330 );
PROVIDE( rom_set_chan_reg = 0x4000633c );
PROVIDE( rom_phy_wakeup_init = 0x40006348 );
PROVIDE( rom_phy_i2c_init1 = 0x40006354 );
PROVIDE( rom_tsens_temp_read = 0x40006360 );
PROVIDE( rom_bt_track_pll_cap = 0x4000636c );
PROVIDE( rom_wifi_track_pll_cap = 0x40006378 );
PROVIDE( rom_wifi_set_tx_gain = 0x40006384 );
PROVIDE( rom_txpwr_cal_track = 0x40006390 );
PROVIDE( rom_tx_pwctrl_background = 0x4000639c );
PROVIDE( rom_bt_set_tx_gain = 0x400063a8 );
PROVIDE( rom_noise_check_loop = 0x400063b4 );
PROVIDE( rom_phy_close_rf = 0x400063c0 );
PROVIDE( rom_phy_xpd_tsens = 0x400063cc );
PROVIDE( rom_phy_freq_mem_backup = 0x400063d8 );
PROVIDE( rom_phy_ant_init = 0x400063e4 );
PROVIDE( rom_bt_track_tx_power = 0x400063f0 );
PROVIDE( rom_wifi_track_tx_power = 0x400063fc );
PROVIDE( rom_phy_dig_reg_backup = 0x40006408 );
PROVIDE( chip728_phyrom_version_num = 0x40006414 );
PROVIDE( rom_mac_tx_chan_offset = 0x40006420 );
PROVIDE( rom_rx_gain_force = 0x4000642c );
/* Data (.data, .bss, .rodata) */
PROVIDE( phy_param_rom = 0x3fcef81c );
