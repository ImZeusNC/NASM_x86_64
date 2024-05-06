; Instrucciones con operaciones aritmeticas entre los operandos
section .text
    global _start

_start:
    ;suma aritmetica
    mov al, 5    ;al = 5
    mov bl, 4    ;bl = 4
    add al, bl   ;al = al + bl
    ;resta aritmetica
    mov cl, 7    ;cl = 7
    mov dl, 3    ;dl = 3
    sub cl, dl   ;cl = cl - dl
    ;multiplicacion aritmetica (excepcion)
    mov cl, 7    ; cl = 7
    mov dl, 2    ; dl = 2
    imul cl      ; cx = cl * dl, al multiplicarse el resultado quedara en un registro de mas bits
    ;division aritmetica
    mov al, 15   ; al = 15
    mov bl, 3    ; bl = 3
    idiv al      ; al = al / bl
    ;residuo se guarda en ah
    ;finaliza el programa
    mov rax, 60
    mov rdi, 0
    syscall