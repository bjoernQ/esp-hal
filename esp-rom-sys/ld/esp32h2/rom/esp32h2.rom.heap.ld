/*
 * SPDX-FileCopyrightText: 2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32h2.rom.heap.ld for esp32h2
 *
 *
 * Generated from ./target/esp32h2/interface-esp32h2.yml md5sum c0ad4e113e5b29bb9d799f10f03edbc1
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group heap
 ***************************************/

/* Functions */
PROVIDE( tlsf_create = 0x400003f4 );
PROVIDE( tlsf_create_with_pool = 0x400003f8 );
PROVIDE( tlsf_get_pool = 0x400003fc );
PROVIDE( tlsf_add_pool = 0x40000400 );
PROVIDE( tlsf_remove_pool = 0x40000404 );
PROVIDE( tlsf_malloc = 0x40000408 );
PROVIDE( tlsf_memalign = 0x4000040c );
PROVIDE( tlsf_memalign_offs = 0x40000410 );
PROVIDE( tlsf_realloc = 0x40000414 );
PROVIDE( tlsf_free = 0x40000418 );
PROVIDE( tlsf_block_size = 0x4000041c );
PROVIDE( tlsf_size = 0x40000420 );
PROVIDE( tlsf_align_size = 0x40000424 );
PROVIDE( tlsf_block_size_min = 0x40000428 );
PROVIDE( tlsf_block_size_max = 0x4000042c );
PROVIDE( tlsf_pool_overhead = 0x40000430 );
PROVIDE( tlsf_alloc_overhead = 0x40000434 );
PROVIDE( tlsf_walk_pool = 0x40000438 );
PROVIDE( tlsf_check = 0x4000043c );
PROVIDE( tlsf_poison_fill_pfunc_set = 0x40000444 );
PROVIDE( tlsf_poison_check_pfunc_set = 0x40000448 );
PROVIDE( multi_heap_get_block_address_impl = 0x4000044c );
PROVIDE( multi_heap_get_allocated_size_impl = 0x40000450 );
PROVIDE( multi_heap_register_impl = 0x40000454 );
PROVIDE( multi_heap_set_lock = 0x40000458 );
PROVIDE( multi_heap_os_funcs_init = 0x4000045c );
PROVIDE( multi_heap_internal_lock = 0x40000460 );
PROVIDE( multi_heap_internal_unlock = 0x40000464 );
PROVIDE( multi_heap_get_first_block = 0x40000468 );
PROVIDE( multi_heap_get_next_block = 0x4000046c );
PROVIDE( multi_heap_is_free = 0x40000470 );
PROVIDE( multi_heap_malloc_impl = 0x40000474 );
PROVIDE( multi_heap_free_impl = 0x40000478 );
PROVIDE( multi_heap_realloc_impl = 0x4000047c );
PROVIDE( multi_heap_aligned_alloc_impl_offs = 0x40000480 );
PROVIDE( multi_heap_aligned_alloc_impl = 0x40000484 );
PROVIDE( multi_heap_check = 0x40000488 );
PROVIDE( multi_heap_dump = 0x4000048c );
PROVIDE( multi_heap_free_size_impl = 0x40000490 );
PROVIDE( multi_heap_minimum_free_size_impl = 0x40000494 );
PROVIDE( multi_heap_get_info_impl = 0x40000498 );
/* Data (.data, .bss, .rodata) */
PROVIDE( heap_tlsf_table_ptr = 0x4084ffd8 );

PROVIDE (multi_heap_malloc = multi_heap_malloc_impl);
PROVIDE (multi_heap_free = multi_heap_free_impl);
PROVIDE (multi_heap_realloc = multi_heap_realloc_impl);
PROVIDE (multi_heap_get_allocated_size = multi_heap_get_allocated_size_impl);
PROVIDE (multi_heap_register = multi_heap_register_impl);
PROVIDE (multi_heap_get_info = multi_heap_get_info_impl);
PROVIDE (multi_heap_free_size = multi_heap_free_size_impl);
PROVIDE (multi_heap_minimum_free_size = multi_heap_minimum_free_size_impl);
PROVIDE (multi_heap_get_block_address = multi_heap_get_block_address_impl);
PROVIDE (multi_heap_aligned_alloc = multi_heap_aligned_alloc_impl);
PROVIDE (multi_heap_aligned_free = multi_heap_aligned_free_impl);
PROVIDE (multi_heap_check = multi_heap_check);
PROVIDE (multi_heap_set_lock = multi_heap_set_lock);
PROVIDE (multi_heap_os_funcs_init = multi_heap_mutex_init);
PROVIDE (multi_heap_internal_lock = multi_heap_internal_lock);
PROVIDE (multi_heap_internal_unlock = multi_heap_internal_unlock);
