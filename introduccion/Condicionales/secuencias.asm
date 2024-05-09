section .data
    numero1 dd 10
    numero2 dd 5  
    mensaje_mayor db "El primer número es mayor", 10, 0
    mensaje_menor db "El segundo número es mayor", 10, 0
    mensaje_igual db "Ambos números son iguales", 10, 0

section .text
global _start

_start:
    mov eax, [numero1]
    cmp eax, [numero2]

    jg es_mayor
    jl es_menor
    je son_iguales

es_mayor:
    mov rbx, mensaje_mayor
    call imprimir_mensaje
    jmp fin_programa

es_menor:
    mov rbx, mensaje_menor
    call imprimir_mensaje
    jmp fin_programa

son_iguales:
    mov rbx, mensaje_igual
    call imprimir_mensaje
    jmp fin_programa

fin_programa:
    mov rax, 60
    mov rdi, 0
    syscall

imprimir_mensaje:
    mov rax, 1
    mov rdi, 1
    mov rsi, rbx 
    mov rdx, 30  
    syscall
    ret