# LAS SECCIONES

En el lenguaje ensamblador existen muchas secciones o segmentos, se declaran como `section` o `segment` los cuales usamos para definir la estructura del programa, yo solo mostrare las mas ocupadas por mi y que pueden serles utiles.

- La sección `.text`, encargada de almacenar todo el código del programa, debe ir dentro del archivo asm o provocara errores al compilar.
- La sección `.data`, encargada de almacenar todas las variables inicializadas del programa, es opcional de declarar.
- La seccion `.rodata`,(read-only) encargada de almacenar variables de solo lectura como constantes o textos no modificables, es opcional de declarar.
- La sección `.bss`, encargada de almacenar todas las variables no inicializadas o estaticas que se usaran en algun puntodel programa, es opcional de declarar.
- La sección `.comment`, encargada de guardar comentarios extras e información importante del programa, es opcional de declarar.

## Ejemplos

```
    section .comment

        ;programa creado por ImZeusNC.
        ;zona de comentarios y datos importantes.

    section .data

        mensaje: db 'hola', 10      ;variable iniciada.

    section .rodata

        pi equ 3.14                 ;constante iniciada.

    section .bss                    ;variables no iniciadas.
        nombre: resb 1

    section .text                   ;codigo de finalizar programa.

        mov     rax, 60
        xor     rdi, rdi
        syscall
```
## IMPORTANTE

Estos codigos pueden sufrir errores o cambios debido a la actualización de NASM o errores propios, se agradece por avisar en caso de suceder.
cualquier cosa pregunten en mi correo:
LucasMedinaAvila@protonmail.com .