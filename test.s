	.text
	.globl _start
_start:
	nop
	la a0, message
	jal puts
	nop
	nop
	ebreak

	# writes the null terminated string pointed to by a0 to serial
	# no return value
puts:
	li t0, 0x10000000 # address of serial
puts_loop:
	lb t1, (a0)
	beqz t1, puts_done
	sb t1, (t0)
	addi a0, a0, 0x1
	j puts_loop

puts_done:
	ret

message:
	.asciz "Hello, world!\n"
