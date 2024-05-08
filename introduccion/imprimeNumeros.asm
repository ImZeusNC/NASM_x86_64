section .bss
    numero: resb 3

section .text
    global _start

_start:
    mov rax, 0
    mov rdi, 0
    lea rsi, numero
    mov rdx, 3
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, numero
    mov rdx, 3
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall