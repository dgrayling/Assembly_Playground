dist/asm_program: dist/asm_program.o c_wrapper.c
	clang -g -o dist/asm_program c_wrapper.c dist/asm_program.o

dist/asm_program.o: asm_program.s | dist
	as -g -o dist/asm_program.o asm_program.s

dist:
	@mkdir -p dist

.PHONY: clean
clean:
	rm -rf dist

