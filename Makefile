compile:
	nasm -f elf membreak.asm
	ld membreak.o -o membreak 
execute:
	./membreak
