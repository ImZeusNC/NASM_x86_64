section .data

  digito: db 0, 0

section .text

 global _start

_start:
  ; apila en el stack los valores del 1 al 5.
  push  1
  push  2
  push  3
  push  4
  push  5
  ; pila = [1, 2, 3, 4 , 5]
  
  pop   rax ; ponemos el ultimo numero apilado en el registro rax, en este caso el 5.
  call  imprimir_digito ; imprime el digito 5.
  pop   rax
  call  imprimir_digito
  pop   rax
  call  imprimir_digito
  pop   rax
  call  imprimir_digito
  pop   rax
  call  imprimir_digito

  mov   rax, 60
  xor   rdi, rdi
  syscall

imprimir_digito:
  ; bucle para imprimir un digito decimal a caracter ASCII.
  add   rax, 0x30 ; le sumamos 48 a nuestro numero para hacerlo ASCII.
  mov   [digito], al
  ; llama a sys_write para imprimir el digito.
  mov   rax, 1
  mov   rdi, 1
  mov   rsi, digito
  mov   rdx, 1
  syscall
  ret
