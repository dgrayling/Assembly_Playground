.global _asm_main

_asm_main:
    // Input: x0 contains the integer to square
    // Output: x0 contains the result
    mul x0, x0, x0      // Multiply x0 by itself
    ret                  // Return to caller
