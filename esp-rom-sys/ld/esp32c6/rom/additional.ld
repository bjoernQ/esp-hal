PROVIDE( memset = 0x400004a8 );
PROVIDE( memcpy = 0x400004ac );
PROVIDE( memmove = 0x400004b0 );
PROVIDE( memcmp = 0x400004b4 );

PROVIDE( strncmp = 0x400004c4 );
PROVIDE( strncpy = 0x400004bc );
PROVIDE( strcpy = 0x400004b8 );

PROVIDE( abs = 0x40000578 );

PROVIDE(strcat = 0x4000052c);
PROVIDE(strcmp = 0x400004c0);
PROVIDE(strchr = 0x40000534);
PROVIDE(strlcpy = 0x40000544);
PROVIDE(strstr = 0x400004cc);
PROVIDE(strcasecmp = 0x40000524);

EXTERN(__mktime);
EXTERN(__strnlen);
EXTERN(__atoi);

PROVIDE ( strnlen = __strnlen );
PROVIDE ( atoi = __atoi );
PROVIDE ( mktime = __mktime );

PROVIDE( syscall_table_ptr = 0x4087ffd4 );
