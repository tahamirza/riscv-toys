a.out: test.o virt.lds
	riscv64-linux-gnu-ld virt.lds test.o

test.o: test.s
	riscv64-linux-gnu-as test.s -o test.o

qemu:
	qemu-system-riscv64 -nographic -machine virt -kernel a.out -S -s

gdb:
	riscv64-linux-gnu-gdb -ex "target remote localhost:1234" ./a.out
