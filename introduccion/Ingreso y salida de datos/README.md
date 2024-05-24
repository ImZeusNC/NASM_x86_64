# INGRESO Y SALIDA DE DATOS

Para poder acceder a estas funciones debemos hacer una llamada al sistema operativo, esta llamada se diferencia por Windows y Linux, porfavor revisar el pdf que contiene todas las llamadas para ambos sistemas.

## Syscalls

Dentro del código se declaran como un número el cual las representa, en el caso de sys_write(), función de escritura, es el numero 1 en Linux y el 4 en Windows, tambien, necesitan parametros los cuales debemos darles para poder realizar su tarea, finalmente, tenemos la llamada `syscall` la cual previamente debe tener definidos sus parametros y debe ir al final de cada llamada al sistema.
En los archivos que dejare en esta carpeta iran solo los de escritura, lectura y salida, esos son los mas usados por mi en este bloque de introducción a ensamblador.

## Ejemplos

```
    mov     rax, 1      ; primer parametro, número de la llamada al sistema sys_write().
    mov     rdi, 1      ; segundo parametro, salida estandar STDOUT, salida externa.
    mov     rsi, mensaje        ; tercer parametro, operando con el contenido a imprimir.
    mov     rdx, 5      ; cuarto parametro, largo en bytes del contenido. 
    syscall         ; realiza la llamada al sistema con sus parametros.
```
Como podemos ver en este código, la llamada fue una sys_write() con el objetivo de imprimir una variable mensaje que contiene 5 bytes de largo.

## IMPORTANTE

Estos codigos pueden sufrir errores o cambios debido a la actualización de NASM o errores propios, se agradece por avisar en caso de suceder.
cualquier cosa pregunten en mi correo:
LucasMedinaAvila@protonmail.com .