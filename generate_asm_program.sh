if [ $# -ne 2 ]; then
    echo Usage: $0 
    echo "Arg 1: asm program to build"
    echo "Arg 2: C wrapper file"
    echo "Example usage:"
    echo "./generate_asm_program.sh hello.s void_int.c"
    echo "./generate_asm_program.sh square.s int_int.c"
    exit 1
fi

cp $1 asm_program.s
cp $2 c_wrapper.c
make clean && make dist/asm_program


