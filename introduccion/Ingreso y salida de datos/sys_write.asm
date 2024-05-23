section .data

    mensaje: db 'Bienvenidos ', 0,      ;se declaran los mensajes separados junto a un 0 finalizador.
    mensaje2: db 'todos ', 0,           
    mensaje3: db 'a este archivo', 0

section .text

    global _start

_start:
                                        ;se llama el primer mensaje.
    mov     rax, 1                      ;selecciona el número de llamada 1 que es sys_write(). (linux)
    mov     rdi, 1                      ;salida estandar STDOUT como primer parametro.
    mov     rsi, mensaje                ;operando a imprimir como segundo operando.
    mov     rdx, 13                     ;operando de longuitud del operando como tercer operando.
    syscall                             ;realiza la llamada al sistema(linux).

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, mensaje2
    mov     rdx, 7
    syscall

    mov     rax, 1
    mov     rdi, 1
    mov     rsi, mensaje3
    mov     rdx, 15
    syscall

    mov     rax, 60                     ;se llama a sys_exit(). (linux)
    xor     rdi, rdi                    ;primer parametro 0, salida exitosa.
    syscall                             ;realiza el llamado.