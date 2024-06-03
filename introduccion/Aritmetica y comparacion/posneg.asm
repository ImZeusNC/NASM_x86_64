section .data

  positivo_msg: db 'El numero es positivo', 10
  negativo_msg: db 'El numero es negativo', 10

section .bss

  num resb 1
  buffer resb 2

section .text

  global _start

_start:

  mov   rax, 0
  mov   rdi, 0
  mov   rsi, buffer
  mov   rdx, 2
  syscall

  movzx   rax, byte[buffer]
  sub   rax, 0x30
  mov   [num], rax

comparar_numero:

  movsx   rax, byte[num]
  test   rax, rax

  js  imprime_negativo
  jz  finalizar
  jg  imprime_positivo

finalizar:

  mov   rax, 60
  xor   rdi, rdi
  syscall

imprime_positivo:

  mov   rax, 1
  mov   rdi, 1
  mov   rsi, positivo_msg
  mov   rdx, 22
  syscall

  jmp finalizar

imprime_negativo:

  mov   rax, 1
  mov   rdi, 1
  mov   rsi, negativo_msg
  mov   rdx, 22
  syscall

  jmp finalizar
