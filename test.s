	.text
	.globl _start
_start:
	nop
	li x28, 0x10000000
	li x29, 0x68
	sd x29, (x28)
	ebreak
