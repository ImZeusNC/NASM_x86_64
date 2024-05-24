;El código deberia imprimir numeros del 9 al 0, iterando desde el número 10 exclusivo.

section .data

    digito: db 0, 10

section .text

    global _start

_start:

    mov     rax, 10

bucle:   ;primer loop que decrementa el registro rax y lo almacena en la pila.

    dec     rax
    push    rax
    cmp     rax, 0
    jne     bucle
    je      salida_bucle

salida_bucle:   ;segundo loop que coloca en rbx el valor de la pila, lo imprime y luego compara si es igual al último digito. 

    pop     rbx
    mov     rcx, rbx
    call    imprimir_digito

    cmp     rbx, 9
    jne     salida_bucle
    je      finalizar

imprimir_digito:    ;función para imprimir el digito de número a carácter.

    add     rcx, 48
    mov     [digito], cl
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, digito
    mov     rdx, 2
    syscall
    ret

finalizar:

    mov     rax, 60
    xor     rdi, rdi
    syscall
