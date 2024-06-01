section .bss

  numero resd 1 ; reserva espacio para el numero en su formato decimal.
  buffer resb 5 ; reserva espacio para la lectura del numero(hasta 4 digitos maximo).

section .text

  global _start

_start:
  ; hace una llamada a sys_read(), para leer el numero en formato texto(ASCII).
  mov   rax, 0
  mov   rdi, 0
  mov   rsi, buffer
  mov   rdx, 5
  syscall

  mov   ecx, buffer ; coloca el buffer en el registro contador ecx.
  mov   eax, 0  ; inicia el registro eax como 0.
  mov   edi, 10 ; inicia la base decimal 10 en el registro edi.

bucle_convertidor:
  ; bucle encargado de converir digito a digito de ASCII a decimal.
  movzx   edx, byte[ecx] ; mueve el byte de ecx a edx.
  sub   edx, 0x30 ; le resta 48 para convertir el digito ascii en decimal.
  imul  eax, edi ; multiplica el valor en eax por la base decimal 10.
  add   eax, edx ; suma el valor del digito en edx a el registro eax.
  inc   ecx ; cambia al siguiente byte en ecx.
  cmp   byte[ecx], 0x0a ; compara el byte de ecx con 10 que es un salto de linea o tecla enter para verificar si es el final.
  jne   bucle_convertidor ; salta si no es igual a el bucle nuevamente, si no es el final salta.
  mov   [numero], eax ; guarda el numero decimal dentro de la variable numero.

finalizar:
  ; finaliza el programa de manera rapida.
  mov   rax, 60
  xor   rdi, rdi  ; manera mas rapida de asignar codigo 0 a rdi.
  syscall
