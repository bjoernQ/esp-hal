PROVIDE( memset = 0x40000488 );
PROVIDE( memcpy = 0x4000048c );
PROVIDE( memmove = 0x40000490 );
PROVIDE( memcmp = 0x40000494 );

PROVIDE( strcpy = 0x40000498 );
PROVIDE( strncpy = 0x4000049c );
PROVIDE( strncmp = 0x400004a4 );

PROVIDE ( strcat = 0x4000050c );
PROVIDE ( strcmp = 0x400004a0 );
PROVIDE ( strchr = 0x40000514 );
PROVIDE ( strlcpy = 0x40000524 );
PROVIDE ( strstr = 0x400004ac );
PROVIDE ( strcasecmp = 0x40000504 );

EXTERN(__mktime);
EXTERN(__strnlen);
EXTERN(__atoi);

PROVIDE ( strnlen = __strnlen );
PROVIDE ( atoi = __atoi );
PROVIDE ( mktime = __mktime );

PROVIDE( abs = 0x40000558 );

PROVIDE( syscall_table_ptr = 0x3fcdffd8 );
