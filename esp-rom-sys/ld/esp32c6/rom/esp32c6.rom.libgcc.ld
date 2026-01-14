/*
 * SPDX-FileCopyrightText: 2022 Espressif Systems (Shanghai) CO LTD
 *
 * SPDX-License-Identifier: Apache-2.0
 */
/* ROM function interface esp32c6.rom.libgcc.ld for esp32c6
 *
 *
 * Generated from ./target/esp32c6/interface-esp32c6.yml md5sum 06c13e133e0743d09b87aba30d3e213b
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group libgcc
 ***************************************/

/* Functions */
PROVIDE( __absvdi2 = 0x40000884 );
PROVIDE( __absvsi2 = 0x40000888 );
PROVIDE( __adddf3 = 0x4000088c );
PROVIDE( __addsf3 = 0x40000890 );
PROVIDE( __addvdi3 = 0x40000894 );
PROVIDE( __addvsi3 = 0x40000898 );
PROVIDE( __ashldi3 = 0x4000089c );
PROVIDE( __ashrdi3 = 0x400008a0 );
PROVIDE( __bswapdi2 = 0x400008a4 );
PROVIDE( __bswapsi2 = 0x400008a8 );
PROVIDE( __clear_cache = 0x400008ac );
PROVIDE( __clrsbdi2 = 0x400008b0 );
PROVIDE( __clrsbsi2 = 0x400008b4 );
PROVIDE( __clzdi2 = 0x400008b8 );
PROVIDE( __clzsi2 = 0x400008bc );
PROVIDE( __cmpdi2 = 0x400008c0 );
PROVIDE( __ctzdi2 = 0x400008c4 );
PROVIDE( __ctzsi2 = 0x400008c8 );
PROVIDE( __divdc3 = 0x400008cc );
PROVIDE( __divdf3 = 0x400008d0 );
PROVIDE( __divdi3 = 0x400008d4 );
PROVIDE( __divsc3 = 0x400008d8 );
PROVIDE( __divsf3 = 0x400008dc );
PROVIDE( __divsi3 = 0x400008e0 );
PROVIDE( __eqdf2 = 0x400008e4 );
PROVIDE( __eqsf2 = 0x400008e8 );
PROVIDE( __extendsfdf2 = 0x400008ec );
PROVIDE( __ffsdi2 = 0x400008f0 );
PROVIDE( __ffssi2 = 0x400008f4 );
PROVIDE( __fixdfdi = 0x400008f8 );
PROVIDE( __fixdfsi = 0x400008fc );
PROVIDE( __fixsfdi = 0x40000900 );
PROVIDE( __fixsfsi = 0x40000904 );
PROVIDE( __fixunsdfsi = 0x40000908 );
PROVIDE( __fixunssfdi = 0x4000090c );
PROVIDE( __fixunssfsi = 0x40000910 );
PROVIDE( __floatdidf = 0x40000914 );
PROVIDE( __floatdisf = 0x40000918 );
PROVIDE( __floatsidf = 0x4000091c );
PROVIDE( __floatsisf = 0x40000920 );
PROVIDE( __floatundidf = 0x40000924 );
PROVIDE( __floatundisf = 0x40000928 );
PROVIDE( __floatunsidf = 0x4000092c );
PROVIDE( __floatunsisf = 0x40000930 );
PROVIDE( __gcc_bcmp = 0x40000934 );
PROVIDE( __gedf2 = 0x40000938 );
PROVIDE( __gesf2 = 0x4000093c );
PROVIDE( __gtdf2 = 0x40000940 );
PROVIDE( __gtsf2 = 0x40000944 );
PROVIDE( __ledf2 = 0x40000948 );
PROVIDE( __lesf2 = 0x4000094c );
PROVIDE( __lshrdi3 = 0x40000950 );
PROVIDE( __ltdf2 = 0x40000954 );
PROVIDE( __ltsf2 = 0x40000958 );
PROVIDE( __moddi3 = 0x4000095c );
PROVIDE( __modsi3 = 0x40000960 );
PROVIDE( __muldc3 = 0x40000964 );
PROVIDE( __muldf3 = 0x40000968 );
PROVIDE( __muldi3 = 0x4000096c );
PROVIDE( __mulsc3 = 0x40000970 );
PROVIDE( __mulsf3 = 0x40000974 );
PROVIDE( __mulsi3 = 0x40000978 );
PROVIDE( __mulvdi3 = 0x4000097c );
PROVIDE( __mulvsi3 = 0x40000980 );
PROVIDE( __nedf2 = 0x40000984 );
PROVIDE( __negdf2 = 0x40000988 );
PROVIDE( __negdi2 = 0x4000098c );
PROVIDE( __negsf2 = 0x40000990 );
PROVIDE( __negvdi2 = 0x40000994 );
PROVIDE( __negvsi2 = 0x40000998 );
PROVIDE( __nesf2 = 0x4000099c );
PROVIDE( __paritysi2 = 0x400009a0 );
PROVIDE( __popcountdi2 = 0x400009a4 );
PROVIDE( __popcountsi2 = 0x400009a8 );
PROVIDE( __powidf2 = 0x400009ac );
PROVIDE( __powisf2 = 0x400009b0 );
PROVIDE( __subdf3 = 0x400009b4 );
PROVIDE( __subsf3 = 0x400009b8 );
PROVIDE( __subvdi3 = 0x400009bc );
PROVIDE( __subvsi3 = 0x400009c0 );
PROVIDE( __truncdfsf2 = 0x400009c4 );
PROVIDE( __ucmpdi2 = 0x400009c8 );
PROVIDE( __udivdi3 = 0x400009cc );
PROVIDE( __udivmoddi4 = 0x400009d0 );
PROVIDE( __udivsi3 = 0x400009d4 );
PROVIDE( __udiv_w_sdiv = 0x400009d8 );
PROVIDE( __umoddi3 = 0x400009dc );
PROVIDE( __umodsi3 = 0x400009e0 );
PROVIDE( __unorddf2 = 0x400009e4 );
PROVIDE( __unordsf2 = 0x400009e8 );
PROVIDE( __extenddftf2 = 0x400009ec );
PROVIDE( __trunctfdf2 = 0x400009f0 );
