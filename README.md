# NASM_x86_64
Mi repositorio personal de proyectos hechos con lenguaje ensamblador x86_64.
Busco documentar mis progresos a la vez de crear una ayuda a quienes busquen iniciarse en este lenguaje.

# Novedades
Planeo agregar documentos pdf para los temas, hechos totalmente por mi para que puedan imprimirlos y estudiarlos.
Ire actualizando a diario el repositorio, aparte, trabajo en un manual de usuario que contendra todos los temas tratados aqui de una manera mas sencilla, y seran como una recopilación de los pdf que iran por los temas antes dichos.

## ¿Qué necesitamos para programar en ensamblador?

Antes que nada asegurarnos que nuestro procesador tenga la arquitectura x86 de 64 bits, luego, necesitamos instalar NASM desde su página oficial o desde la terminal.

https://nasm.us

- Archlinux y basados:
**sudo pacman -S nasm**
- Ubuntu, Debian, Linux mint y basados:
**sudo apt-get -y install nasm**
- Fedora:
**sudo dnf -y install nasm**

Por ultimo, el entorno de desarrolo sera el que mas nos acomode, yo utilizo Visual Studio Code, Nano, Nvim, etc. Tambien hay entornos gráficos para elegir.

## ¿Cómo compilar un archivo .asm?

Se realiza con dos comandos que son `nasm -f elf64 hello.asm -o hello.o` que nos crea un objeto con el nombre de nuestro archivo y `ld hello.o -o hello` que convierte el objeto a ejecutable, solo faltaria cambiar el nombre de *hello.asm* y *hello.o* por el de nuestros archivos. ya bastaria con ejecutar por la consola el código `./hello`.