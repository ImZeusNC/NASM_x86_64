section .bss
    num resd 1 ; Aquí se almacenará el número ingresado
    buffer resb 5 ; Buffer para almacenar el número como texto
    result resb 5 ; Buffer para almacenar el resultado como texto

section .text
    global _start

_start:
    ; Leer el número de la consola
    mov rax, 0 ; sys_read
    mov rdi, 0 ; stdin
    mov rsi, buffer ; Dirección del buffer
    mov rdx, 5 ; Tamaño del buffer
    syscall

    ; Convertir el texto a número
    mov ecx, buffer
    mov eax, 0 ; Inicializar eax a 0
    mov edi, 10 ; Base decimal

convert_loop:
    movzx edx, byte [ecx] ; Leer el siguiente dígito
    sub edx, '0' ; Convertir el dígito de ASCII a número
    imul eax, edi ; Multiplicar el número acumulado por la base
    add eax, edx ; Sumar el nuevo dígito
    inc ecx ; Avanzar al siguiente carácter
    cmp byte [ecx], 0x0A ; Comprobar si hemos llegado al final del texto
    jne convert_loop

    mov [num], eax ; Guardar el número

    ; Realizar la operación aritmética
    mov eax, 2024 ; Cargar 2024 en eax
    sub eax, dword [num] ; Restar el número ingresado
    mov [num], eax ; Guardar el resultado

    ; Convertir el número a texto
    mov ecx, result + 4 ; Apuntar al final del buffer de resultado
    mov byte [ecx], 0 ; Terminar el texto con un cero
    dec ecx ; Mover ecx al último dígito

convert_back_loop:
    mov eax, [num] ; Cargar el número
    xor edx, edx ; Limpiar edx para la división
    mov edi, 10 ; Base decimal
    div edi ; Dividir el número por la base
    mov [num], eax ; Guardar el número dividido
    add edx, '0' ; Convertir el residuo a ASCII
    mov [ecx], dl ; Guardar el dígito
    dec ecx ; Mover ecx al siguiente dígito
    cmp eax, 0 ; Comprobar si el número es cero
    jne convert_back_loop

    ; Imprimir el resultado
    mov rax, 1 ; sys_write
    mov rdi, 1 ; stdout
    lea rsi, [ecx+1] ; Apuntar al primer dígito
    mov rdx, result + 4 ; Apuntar al final del buffer de resultado
    sub rdx, rsi ; Calcular la longitud del número
    syscall

    ; Salir del programa
    mov rax, 60 ; sys_exit
    xor rdi, rdi ; Código de salida 0
    syscall