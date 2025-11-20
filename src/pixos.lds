/* Linker script for pixos */
MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 32K
    RAM (rwx)  : ORIGIN = 0x20000000, LENGTH = 12K
}

SECTIONS
{
    .vector ORIGIN(FLASH) :
    {
        KEEP(*(.vector.msp))
        KEEP(*(.vector.exception))
        KEEP(*(.vector.interrupt))
    } > FLASH

    .rodata :
    {
        . = ALIGN(4);
        *(.rodata*)
        . = ALIGN(4);
    } > FLASH

    .text :
    {
        . = ALIGN(4);
        *(.text*)
        . = ALIGN(4);
    } > FLASH

    .stack ORIGIN(RAM) :
    {
        KEEP(*(.stack))
        . = ALIGN(8);
        _estack = .;
    } > RAM

    .data :
    {
        . = ALIGN(4);
        _sdata = .;
        *(.data*)
        . = ALIGN(4);
        _edata = .;
    } > RAM
    _ldata = LOADADDR(.data);

    .bss :
    {
        . = ALIGN(4);
        _sbss = .;
        *(.bss*)
        . = ALIGN(4);
        _ebss = .;
    } > RAM AT > FLASH

    . = ALIGN(4);
    _sheap = .;
    _eheap = ORIGIN(RAM) + LENGTH(RAM);
}