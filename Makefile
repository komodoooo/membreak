compile:
	nasm -f elf membreak.asm
	ld -s -o membreak membreak.o
execute:
	./membreak
