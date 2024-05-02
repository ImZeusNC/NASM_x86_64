section .data                ;seccion para inicializar las variables.
	msg db "Hola Mundo",10   ;se inicia la variable msg con un Hola Mundo y un espacio en codigo ASCII.

section .text                ;seccion para el codigo.
	global _start            ;se hace global el inicio del programa.
	_start:                  ;se inicia el programa.
		mov rax,1            ;se llama la syscall sys.write().
		mov rdi,1            ;primer argumento sys,write(1), descriptor de archivo STDOUT para la salida.
		mov rsi,msg          ;segundo argumento sys.write(1,msg), direccion de memoria con el contenido.
		mov rdx,11           ;tercer argumento sys.write(1,msg,11), longitud de los datos.
		syscall              ;se hace la llamada a la maquina para finalizar instruccion.

		mov rax,60           ;se llama a sys.exit().
		mov rdi,0            ;primer argumento para la salida exitosa sys.exit(0).
		syscall              ;se llama a la maquina para finalizar instruccion y termino de programa.