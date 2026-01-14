/*
 * SPDX-FileCopyrightText: 2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32c2.rom.rvfp.ld esp32c2
 *
 *
 * Generated from ./interface-esp32c2.yml md5sum c679b6ed5e9f0a9c3e7b93e5e0f2a1a3
 *
 * Compatible with ROM where ECO version equal or greater to 1.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group rvfplib
 ***************************************/

/* Functions */
PROVIDE( __adddf3 = 0x40000a18 );
PROVIDE( __addsf3 = 0x40000a1c );
PROVIDE( __divsf3 = 0x40000a20 );
PROVIDE( __eqdf2 = 0x40000a24 );
PROVIDE( __eqsf2 = 0x40000a28 );
PROVIDE( __extendsfdf2 = 0x40000a2c );
PROVIDE( __fixdfdi = 0x40000a30 );
PROVIDE( __fixdfsi = 0x40000a34 );
PROVIDE( __fixsfdi = 0x40000a38 );
PROVIDE( __fixsfsi = 0x40000a3c );
PROVIDE( __fixunsdfsi = 0x40000a40 );
PROVIDE( __fixunssfdi = 0x40000a44 );
PROVIDE( __fixunssfsi = 0x40000a48 );
PROVIDE( __floatdidf = 0x40000a4c );
PROVIDE( __floatdisf = 0x40000a50 );
PROVIDE( __floatsidf = 0x40000a54 );
PROVIDE( __floatsisf = 0x40000a58 );
PROVIDE( __floatundidf = 0x40000a5c );
PROVIDE( __floatundisf = 0x40000a60 );
PROVIDE( __floatunsidf = 0x40000a64 );
PROVIDE( __floatunsisf = 0x40000a68 );
PROVIDE( __gedf2 = 0x40000a6c );
PROVIDE( __gesf2 = 0x40000a70 );
PROVIDE( __gtdf2 = 0x40000a74 );
PROVIDE( __gtsf2 = 0x40000a78 );
PROVIDE( __ledf2 = 0x40000a7c );
PROVIDE( __lesf2 = 0x40000a80 );
PROVIDE( __ltdf2 = 0x40000a84 );
PROVIDE( __ltsf2 = 0x40000a88 );
PROVIDE( __muldf3 = 0x40000a8c );
PROVIDE( __mulsf3 = 0x40000a90 );
PROVIDE( __nedf2 = 0x40000a94 );
PROVIDE( __nesf2 = 0x40000a98 );
PROVIDE( __subdf3 = 0x40000a9c );
PROVIDE( __subsf3 = 0x40000aa0 );
PROVIDE( __truncdfsf2 = 0x40000aa4 );

/***************************************
 Group libgcc
***************************************/

/* Functions */
PROVIDE( __absvdi2 = 0x400008a8 );
PROVIDE( __absvsi2 = 0x400008ac );
PROVIDE( __addvdi3 = 0x400008b8 );
PROVIDE( __addvsi3 = 0x400008bc );
PROVIDE( __ashldi3 = 0x400008c0 );
PROVIDE( __ashrdi3 = 0x400008c4 );
PROVIDE( __bswapdi2 = 0x400008c8 );
PROVIDE( __bswapsi2 = 0x400008cc );
PROVIDE( __clear_cache = 0x400008d0 );
PROVIDE( __clrsbdi2 = 0x400008d4 );
PROVIDE( __clrsbsi2 = 0x400008d8 );
PROVIDE( __clzdi2 = 0x400008dc );
PROVIDE( __clzsi2 = 0x400008e0 );
PROVIDE( __cmpdi2 = 0x400008e4 );
PROVIDE( __ctzdi2 = 0x400008e8 );
PROVIDE( __ctzsi2 = 0x400008ec );
PROVIDE( __divdc3 = 0x400008f0 );
PROVIDE( __divdf3 = 0x400008f4 );
PROVIDE( __divdi3 = 0x400008f8 );
PROVIDE( __divsc3 = 0x400008fc );
PROVIDE( __divsi3 = 0x40000904 );
PROVIDE( __ffsdi2 = 0x40000914 );
PROVIDE( __ffssi2 = 0x40000918 );
PROVIDE( __gcc_bcmp = 0x40000958 );
PROVIDE( __lshrdi3 = 0x40000974 );
PROVIDE( __moddi3 = 0x40000980 );
PROVIDE( __modsi3 = 0x40000984 );
PROVIDE( __muldc3 = 0x40000988 );
PROVIDE( __muldi3 = 0x40000990 );
PROVIDE( __mulsc3 = 0x40000994 );
PROVIDE( __mulsi3 = 0x4000099c );
PROVIDE( __mulvdi3 = 0x400009a0 );
PROVIDE( __mulvsi3 = 0x400009a4 );
PROVIDE( __negdf2 = 0x400009ac );
PROVIDE( __negdi2 = 0x400009b0 );
PROVIDE( __negsf2 = 0x400009b4 );
PROVIDE( __negvdi2 = 0x400009b8 );
PROVIDE( __negvsi2 = 0x400009bc );
PROVIDE( __paritysi2 = 0x400009c4 );
PROVIDE( __popcountdi2 = 0x400009c8 );
PROVIDE( __popcountsi2 = 0x400009cc );
PROVIDE( __powidf2 = 0x400009d0 );
PROVIDE( __powisf2 = 0x400009d4 );
PROVIDE( __subvdi3 = 0x400009e0 );
PROVIDE( __subvsi3 = 0x400009e4 );
PROVIDE( __ucmpdi2 = 0x400009ec );
PROVIDE( __udivdi3 = 0x400009f0 );
PROVIDE( __udivmoddi4 = 0x400009f4 );
PROVIDE( __udivsi3 = 0x400009f8 );
PROVIDE( __udiv_w_sdiv = 0x400009fc );
PROVIDE( __umoddi3 = 0x40000a00 );
PROVIDE( __umodsi3 = 0x40000a04 );
PROVIDE( __unorddf2 = 0x40000a08 );
PROVIDE( __unordsf2 = 0x40000a0c );
PROVIDE( __extenddftf2 = 0x40000a10 );
PROVIDE( __trunctfdf2 = 0x40000a14 );
