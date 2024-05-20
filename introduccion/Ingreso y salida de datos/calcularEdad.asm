section .bss
    edadNueva: resb 1
    edad: resb 1

section .text
    global _start

_start:
    mov rax, 0
    mov rdi, 0
    lea rsi, edad
    mov rdx, 3
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, edad
    mov rdx, 3
    syscall

    mov rax, 60
    mov rdi, 0
    syscall