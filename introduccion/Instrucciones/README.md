# TIPOS DE INSTRUCCIONES

## Instrucciones de transferencia de datos:
```
    mov destino, fuente: instruccion generica para mover un dato desde un origen a un destino.
    push fuente: instruccion que mueve el operando de la instruccion a la cima de la pila.
    pop destino: mueve el dato que se encuentra en la cima de la pila al operando destino.
    xchg destino, fuente: intercambia contenidos de los operandos.
```
## Instrucciones aritmeticas y de comparacion:

`add destino, fuente`: suma aritmetica de los dos operandos.
`adc destino, fuente`: suma aritmetica de los dos operandos considerando el bit de transporte.
`sub destino, fuente`: resta aritmetica de los dos operandos.
`sbb destino, fuente`: resta aritmetica de los dos operandos considerando el bit de transporte.
`inc destino`: incrementa el operando en una unidad.
`dec destino`: decrementa el operando en una unidad.
`mul fuente`: multiplicacion entera sin signo.
`imul fuente`: multiplicacion entero con signo.
`div fuente`: division entera sin signo.
`idiv fuente`: division entera con signo.
`neg destino`: negacion aritmetica en complemento a 2.
`cmp destino, fuente`: comparacion de los dos operandos; hace una resta sin guardar el resultado.

## Instrucciones logicas y de desplazamiento:

- a) Logicas:

`and destino, fuente`: operacion 'y' logica.
`or destino, fuente`: operacion 'o' logica.
`xor destino, fuente`: operacion 'o exclusiva' logica.
`not destino`: negacion logica bit a bit.
`test destino, fuente`: comparacion logica de los dos operandos; hace una 'y' logica sin guardar el resultado.

- b) Desplazamiento

`sal destino, fuente` / `shl destino, fuente`: desplazamiento aritmetico/logico a la isquierda.
`sar destino, fuente`: desplazamiento aritmetico a la derecha.
`shr destino, fuente`: desplazamiento logico a la derecha.
`rol destino, fuente`: rotacion logica a la isquierda.
`ror destino, fuente`: rotacion logica a la derecha.
`rcl destino, fuente`: rotacion logica a la isquierda considerando el bit de transporte.
`rcr destino, fuente`: rotacion logica a la derecha considerando el bit de transporte.

## Instrucciones de ruptura de secuencia:

- a) Salto incondicional:

`jmp etiqueta`: salta de manera incondicional a la etiqueta.

- b) saltos que consultan el bit de resultado concreto:

`je etiqueta` / `jz etiqueta`: salta a la etiqueta si igual, si el bit de cero es activo.
`jne etiqueta` / `jnz etiqueta`: salta a la etiqueta si diferente, si el bit de cero no es activo.
`jc etiqueta` / `jnc etiqueta`: salta a la etiqueta si el bit de transporte es activo.
`jnc etiqueta`: salta a la etiqueta si el bit de transporte no es activo.
`jo etiqueta`: salta a la etiqueta si el bit de desbordamiento es activo.
`jno etiqueta`: salta a la etiqueta si el bit de desbordamiento no es activo.
`js etiqueta`: salta a la etiqueta si el bit de signo es activo.
`jns etiqueta`: salta a la etiqueta si el bit de signo no es activo.

- c) saltos condicionales sin considerar el signo:

`jb etiqueta` / `jnae etiqueta`: salta a la etiqueta si es menor.
`jbe etiqueta` / `jna etiqueta`: salta a la etiqueta si es menor o igual.
`ja etiqueta` / `jnbe etiqueta`: salta a la etiqueta si es mayor.
`jae etiqueta` / `jnb etiqueta`: salta a la etiqueta si el mayor o igual.

- d) saltos condicionales considerando el signo:

`jl etiqueta` / `jnge etiqueta`: salta si es menor.
`jle etiqueta` / `jng etiqueta`: salta si es menor o igual.
`jg etiqueta` / `jnle etiqueta`: salta si es mayor.
`jge etiqueta` / `jnl etiqueta`: salta si es mayor o igual.
 
- e) otras instrucciones de ruptura de secuencia:

`loop etiqueta`: decrementa el registro rcx y salta si rcx es diferente a 0.
`call etiqueta`: llamada a subrutina
`ret`: retorno de subrutina.
`iret`: retorno de rutina de servicio de interrupcion(RSI)
`int servicio`: llamada al sistema operativo.

## Instrucciones de entrada/salida

`in destino, fuente`: lectura del puerto E/S especificado en el operando fuente y se guarda en el operando destino.
`out destino, fuente`: escritura de valor especificado por operando fuente en el puerto de E/S especificado en el operando destino.