# LAS ETIQUETAS

Las etiquetas son nombres que guardan una dirección en el codigo que es donde se declaran, podemos acceder a estas mediante saltos que alteran el flujo de ejecución.

### Dentro de este archivo encontraremos:
-Declaración de una etiqueta.
-Salto condicional e incondicional a una etiqueta.
-Pdf imprimible con el contenido tratado.

## Declaracion de Etiquetas
```
    nombre:
        ;codigo en su interior
```

## Salto incondicional hacia la etiqueta
```
    _start:

        jmp     imprime_mensaje

    termina_programa:
        
        mov     rax, 60
        xor     rdi, rdi
        syscall    

    imprime_hola:

        mov     rax, 1
        mov     rdi, 1
        mov     rsi, mensaje
        mov     rdx, mensaje_len
        jmp termina_programa
```

Como podemos ver aqui hay dos etiquetas creadas por mi: `termina_programa` y `imprime_hola` las cuales guardan la dirección a la cual saltamos usando
el salto incondicional `jmp`. 



*todos las instrucciones usadas en este archivo se encuentran ya en instrucciones o en condicionales e incondicionales.*

## Salto condicional hacia etiqueta
```
    _start:

        mov     eax, 0              ; eax comienza en 1.

    analiza_suma:

        inc     eax, 1              ; incrementa rax en 1.       
        cmp     eax, 10             ;compara si eax es igual a 10.

        je  termina_programa        ; salta si es igual eax a 10.
        jne analiza_suma            ; salta si no es igual eax a 10.

    termina_programa:

        mov     rax, 60
        xor     rdi, rdi
        syscall
```

El programa comienza inicializando el registro `eax` como 0, luego lo incrementa y compara eax(1 en su interior) con 10, al no ser iguales lo devuelve a la etiqueta `analiza_suma` con la instrucción `jne` (Jump not equal) donde vuelve a realizar el bucle hasta ser igual a 10, ahi es donde salta con la instrucción `je` (Jump equal) hacia el fin del programa.   

## IMPORTANTE

Estos codigos pueden sufrir errores o cambios debido a la actualización de NASM o errores propios, se agradece por avisar en caso de suceder.
cualquier cosa pregunten en mi correo:
LucasMedinaAvila@protonmail.com .