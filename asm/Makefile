all:
	arm-none-eabi-gcc -c -g swi.s -o asm.o
	arm-none-eabi-ld -Ttext=0x20000 asm.o -o asm.elf

clean:
	rm -rf asm.o asm.elf