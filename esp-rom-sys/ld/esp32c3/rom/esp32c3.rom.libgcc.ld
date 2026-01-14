/* ROM function interface esp32c3.rom.libgcc.ld for esp32c3
 *
 *
 * Generated from ./interface-esp32c3.yml md5sum 93b28a9e1fe42d212018eb4336849208
 *
 * Compatible with ROM where ECO version equal or greater to 0.
 *
 * THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.
 */

/***************************************
 Group libgcc
 ***************************************/

/* Functions */
PROVIDE( __absvdi2 = 0x40000764 );
PROVIDE( __absvsi2 = 0x40000768 );
PROVIDE( __adddf3 = 0x4000076c );
PROVIDE( __addsf3 = 0x40000770 );
PROVIDE( __addvdi3 = 0x40000774 );
PROVIDE( __addvsi3 = 0x40000778 );
PROVIDE( __ashldi3 = 0x4000077c );
PROVIDE( __ashrdi3 = 0x40000780 );
PROVIDE( __bswapdi2 = 0x40000784 );
PROVIDE( __bswapsi2 = 0x40000788 );
PROVIDE( __clear_cache = 0x4000078c );
PROVIDE( __clrsbdi2 = 0x40000790 );
PROVIDE( __clrsbsi2 = 0x40000794 );
PROVIDE( __clzdi2 = 0x40000798 );
PROVIDE( __clzsi2 = 0x4000079c );
PROVIDE( __cmpdi2 = 0x400007a0 );
PROVIDE( __ctzdi2 = 0x400007a4 );
PROVIDE( __ctzsi2 = 0x400007a8 );
PROVIDE( __divdc3 = 0x400007ac );
PROVIDE( __divdf3 = 0x400007b0 );
PROVIDE( __divdi3 = 0x400007b4 );
PROVIDE( __divsc3 = 0x400007b8 );
PROVIDE( __divsf3 = 0x400007bc );
PROVIDE( __divsi3 = 0x400007c0 );
PROVIDE( __eqdf2 = 0x400007c4 );
PROVIDE( __eqsf2 = 0x400007c8 );
PROVIDE( __extendsfdf2 = 0x400007cc );
PROVIDE( __ffsdi2 = 0x400007d0 );
PROVIDE( __ffssi2 = 0x400007d4 );
PROVIDE( __fixdfdi = 0x400007d8 );
PROVIDE( __fixdfsi = 0x400007dc );
PROVIDE( __fixsfdi = 0x400007e0 );
PROVIDE( __fixsfsi = 0x400007e4 );
PROVIDE( __fixunsdfsi = 0x400007e8 );
PROVIDE( __fixunssfdi = 0x400007ec );
PROVIDE( __fixunssfsi = 0x400007f0 );
PROVIDE( __floatdidf = 0x400007f4 );
PROVIDE( __floatdisf = 0x400007f8 );
PROVIDE( __floatsidf = 0x400007fc );
PROVIDE( __floatsisf = 0x40000800 );
PROVIDE( __floatundidf = 0x40000804 );
PROVIDE( __floatundisf = 0x40000808 );
PROVIDE( __floatunsidf = 0x4000080c );
PROVIDE( __floatunsisf = 0x40000810 );
PROVIDE( __gcc_bcmp = 0x40000814 );
PROVIDE( __gedf2 = 0x40000818 );
PROVIDE( __gesf2 = 0x4000081c );
PROVIDE( __gtdf2 = 0x40000820 );
PROVIDE( __gtsf2 = 0x40000824 );
PROVIDE( __ledf2 = 0x40000828 );
PROVIDE( __lesf2 = 0x4000082c );
PROVIDE( __lshrdi3 = 0x40000830 );
PROVIDE( __ltdf2 = 0x40000834 );
PROVIDE( __ltsf2 = 0x40000838 );
PROVIDE( __moddi3 = 0x4000083c );
PROVIDE( __modsi3 = 0x40000840 );
PROVIDE( __muldc3 = 0x40000844 );
PROVIDE( __muldf3 = 0x40000848 );
PROVIDE( __muldi3 = 0x4000084c );
PROVIDE( __mulsc3 = 0x40000850 );
PROVIDE( __mulsf3 = 0x40000854 );
PROVIDE( __mulsi3 = 0x40000858 );
PROVIDE( __mulvdi3 = 0x4000085c );
PROVIDE( __mulvsi3 = 0x40000860 );
PROVIDE( __nedf2 = 0x40000864 );
PROVIDE( __negdf2 = 0x40000868 );
PROVIDE( __negdi2 = 0x4000086c );
PROVIDE( __negsf2 = 0x40000870 );
PROVIDE( __negvdi2 = 0x40000874 );
PROVIDE( __negvsi2 = 0x40000878 );
PROVIDE( __nesf2 = 0x4000087c );
PROVIDE( __paritysi2 = 0x40000880 );
PROVIDE( __popcountdi2 = 0x40000884 );
PROVIDE( __popcountsi2 = 0x40000888 );
PROVIDE( __powidf2 = 0x4000088c );
PROVIDE( __powisf2 = 0x40000890 );
PROVIDE( __subdf3 = 0x40000894 );
PROVIDE( __subsf3 = 0x40000898 );
PROVIDE( __subvdi3 = 0x4000089c );
PROVIDE( __subvsi3 = 0x400008a0 );
PROVIDE( __truncdfsf2 = 0x400008a4 );
PROVIDE( __ucmpdi2 = 0x400008a8 );
PROVIDE( __udivdi3 = 0x400008ac );
PROVIDE( __udivmoddi4 = 0x400008b0 );
PROVIDE( __udivsi3 = 0x400008b4 );
PROVIDE( __udiv_w_sdiv = 0x400008b8 );
PROVIDE( __umoddi3 = 0x400008bc );
PROVIDE( __umodsi3 = 0x400008c0 );
PROVIDE( __unorddf2 = 0x400008c4 );
PROVIDE( __unordsf2 = 0x400008c8 );
