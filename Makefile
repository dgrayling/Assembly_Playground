# Function that generates build rules for a program
define build_program
$(1): dist/$(1).o c_wrappers/$(2).c
	clang -g -o dist/$(1) c_wrappers/$(2).c dist/$(1).o

dist/$(1).o: assembly_programs/$(1).s | dist
	as -g -o dist/$(1).o assembly_programs/$(1).s
endef

# Call the function for each program
$(eval $(call build_program,square,int_int))
$(eval $(call build_program,hello,void_int))
$(eval $(call build_program,fibonacci,int_int))

all: square hello fibonacci

dist:
	@mkdir -p dist

.PHONY: clean
clean:
	rm -rf dist

