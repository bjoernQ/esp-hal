PROVIDE( memset = 0x400004a0 );
PROVIDE( memcpy = 0x400004a4 );
PROVIDE( memmove = 0x400004a8 );
PROVIDE( memcmp = 0x400004ac );

PROVIDE( strncmp = 0x400004bc );
PROVIDE( strncpy = 0x400004b4 );
PROVIDE( strcpy = 0x400004b0 );

PROVIDE( abs = 0x40000570 );

PROVIDE( strcat = 0x40000524 );
PROVIDE( strcmp = 0x400004b8 );
PROVIDE( strchr = 0x4000052c );
PROVIDE( strlcpy = 0x4000053c );
PROVIDE( strstr = 0x400004c4 );
PROVIDE( strcasecmp = 0x4000051c );

PROVIDE( memchr = 0x40000514 );

EXTERN(__mktime);
EXTERN(__strnlen);
EXTERN(__atoi);

PROVIDE ( strnlen = __strnlen );
PROVIDE ( atoi = __atoi );
PROVIDE ( mktime = __mktime );

PROVIDE( syscall_table_ptr = 0x4084ffd4 );
