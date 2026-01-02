.global _asm_main

_asm_main:
    cmp x0, #1          // if n <= 1
    ble base_case       // return n
    
    // Initialize: fib(0) = 0, fib(1) = 1
    mov x1, #0          // prev = 0
    mov x2, #1          // curr = 1
    mov x3, #2          // counter = 2
    
loop:
    add x4, x1, x2      // next = prev + curr
    mov x1, x2          // prev = curr
    mov x2, x4          // curr = next
    add x3, x3, #1      // counter++
    cmp x3, x0          // while counter <= n
    ble loop
    
    mov x0, x2          // return curr
    ret

base_case:
    // n is 0 or 1, just return it
    ret