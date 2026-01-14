PROVIDE( memset = 0x400011e8 );
PROVIDE( memcpy = 0x400011f4 );
PROVIDE( memmove = 0x40001200 );
PROVIDE( memcmp = 0x4000120c );

PROVIDE( strcpy = 0x40001218 );
PROVIDE( strncpy = 0x40001224 );
PROVIDE( strncmp = 0x4000123c );

PROVIDE( bzero = 0x40001260 );

PROVIDE(cache_dbus_mmu_set = 0x400019b0);
PROVIDE( Cache_Suspend_DCache_Autoload = 0x40001734 );
PROVIDE( Cache_Suspend_DCache = 0x400018b4 );

PROVIDE( strcat = 0x40001374 );
PROVIDE( strcmp = 0x40001230 );
PROVIDE( strchr = 0x4000138c );
PROVIDE( strlcpy = 0x400013bc );
PROVIDE( strstr = 0x40001254 );
PROVIDE( strcasecmp = 0x4000135c );

EXTERN(__mktime);
EXTERN(__strnlen);
EXTERN(__atoi);

PROVIDE ( strnlen = __strnlen );
PROVIDE ( atoi = __atoi );
PROVIDE ( mktime = __mktime );

PROVIDE( syscall_table_ptr = 0x3fceffd4 );
