section .bss 
    
    nombre resb 1           ;se declara una variable no iniciada como nombre.

section .text

    global _start

_start:

    mov     rax, 0          ;llamada de lectura sys_read() (linux)
    mov     rdi, 0          ;salida estandar 0 (STDIN) segundo parametro.
    mov     rsi, nombre     ;segundo parametro la variable donde se guardara la lectura.
    mov     rdx, 10         ;bytes que leerá.
    syscall

    mov     rax, 1          ;llamada para imprimir sys_write() (linux)
    mov     rdi, 1          ;ver archivo sys_write() para saber mas.
    mov     rsi, nombre
    mov     rdx, 10
    syscall

    mov     rax, 60         ;llamada de salida sys_exit() (linux)
    xor     rdi, rdi
    syscall
