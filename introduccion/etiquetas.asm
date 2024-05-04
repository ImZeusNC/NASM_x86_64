;Objetivo, crear dos etiquetas, una que imprima hola y otra para finalizar.
section .data
    text db 'Hola', 10
section .text
    global _start
    _start:
        jmp ImprimirHola   ;se hace un salto incondicional a la etiqueta indicada.
    
    Finalizar:             ;esta etiqueta finaliza el programa.
        mov rax, 60
        mov rdi, 0
        syscall

    ImprimirHola:          ;esta etiqueta imprime el texto hola.
        mov rax, 1
        mov rdi, 1
        mov rsi, text
        mov rdx, 5
        syscall
        jmp Finalizar      ;se salta hacia la etiqueta finalizadora.