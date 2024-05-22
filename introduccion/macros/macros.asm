; Definición de las macros.
%macro finalizar 0
    mov     rax, 60
    xor     rdi, rdi
    syscall
%endmacro

%macro helloWorld 2
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, %1
    mov     rdx, %2
    syscall
%endmacro

section .data
    mensaje: db 'HelloWorld', 0

section .text
    global _start

_start:
    
    helloWorld      mensaje, 11  ;macro para imprimir helloWorld.

    finalizar                   ;macro para finalizar.