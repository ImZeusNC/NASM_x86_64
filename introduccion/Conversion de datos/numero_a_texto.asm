section .data

    digito db 0, 0, 0

section .text

    global _start

_start:

    mov     rax, 123 ; numero de 3 digitos cualquiera
    call    imprimir_digito

    mov     rax, 60
    xor     rdi, rdi
    syscall


imprimir_digito:

    ; divide rax(123)
    mov     rbx, 10
    div     rbx ; deja en rax 12 y el resto que es 3 en rdx
    ; tercer digito
    add     dl, '0'
    mov     [digito + 2], dl ; digito = 0, 0, '3', rax = 12, rdx = 3
    ; segundo digito
    mov     rdx, 0
    div     rbx ; divide rax(12) por 10, deja en rax 1 y en dh deja 2 
    add     dl, '0'
    mov     [digito + 1], dl ; digito = 0, '2', '3'
    ;tercer digito
    mov     rdx, 0
    add     al, '0'
    mov     [digito], al ; digito = '1', '2', '3'
    
    mov     rax, 1
    mov     rdi, 1
    mov     rsi, digito
    mov     rdx, 3
    syscall
    ret