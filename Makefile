square: dist/square.o c_wrapper.c
	clang -g -o dist/square c_wrapper.c dist/square.o

dist/square.o: assembly_programs/square.s | dist
	as -g -o dist/square.o assembly_programs/square.s

dist:
	@mkdir -p dist

.PHONY: clean
clean:
	rm -rf dist

