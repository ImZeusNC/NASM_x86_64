section .bss

	variable: resd 1
	colector: resb 5
	resultado: resb 5

section .data

	global _start

_start:
	;lee el numero(texto) por consola
	mov     rax, 0
	mov		rdi, 0
	mov		rsi, colector
	mov		rdx, 5
	syscall

	;convierte el texto a numero
	mov		ecx, buffer	;coloca el numero en el registro de puntero
	mov		eax, 0		;inicializa eax en 0
	mov		edi, 10		;base decimal