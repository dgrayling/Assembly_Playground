#include <stdio.h>
#include <stdlib.h>

extern int asm_main(int arg);

int main(int argc, char *argv[]) {
    int value = argc > 1 ? atoi(argv[1]) : 0;
    int result = asm_main(value);
    printf("Value generated from assembly program: %d, result: %d\n", value, result);
    return 0;
}

