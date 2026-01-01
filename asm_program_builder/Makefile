dist/asm_program: dist/asm_program.o $(C_WRAPPER)
	clang -g -o dist/asm_program $(C_WRAPPER) dist/asm_program.o

dist/asm_program.o: asm_program.s | dist
	as -g -o dist/asm_program.o asm_program.s

dist:
	@mkdir -p dist

.PHONY: clean
clean:
	rm -rf dist

