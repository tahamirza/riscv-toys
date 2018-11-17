OUTPUT_ARCH( "riscv" )
ENTRY( _start )

MEMORY
{
	text : ORIGIN = 0x80000000, LENGTH = 1M
}

SECTIONS
{
	.text : { *(.text) } >text
}
