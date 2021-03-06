/* ARC EM Starter Kit v2.1 EM5D */

MEMORY
{
    ICCM : ORIGIN = 0x00000000, LENGTH = 128K
    DCCM : ORIGIN = 0x80000000, LENGTH = 256K
}

REGION_ALIAS("startup", ICCM)
REGION_ALIAS("text", ICCM)
REGION_ALIAS("data", DCCM)
REGION_ALIAS("sdata", DCCM)

PROVIDE (__stack_top = (0x8003FFFF & -4) );
PROVIDE (__end_heap = (0x8003FFFF) );
