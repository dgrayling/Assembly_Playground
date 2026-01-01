.section __DATA,__data
msg:
    .ascii "Hello, World!\n"
msg_len = . - msg

.section __TEXT,__text
.global _asm_main
.align 2

_asm_main:
    // write(1, msg, msg_len)
    mov x0, #1
    adrp x1, msg@PAGE
    add x1, x1, msg@PAGEOFF
    mov x2, #msg_len
    mov x16, #4
    svc #0x80
    
    ret  // Return instead of exit syscall

