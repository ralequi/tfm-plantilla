Plantilla en *LaTeX* para el **Trabajo de Fin de Master** (EPS-UAM). Contiene la estructura básica para la memoria del mismo, siguiendo la [normativa de TFMs](doc/).

- Para completar y adaptar la plantilla, busca en el proyecto la palabra clave `TODO` y sobreescribe el nombre de tu trabajo, tutor, etc.
- Para manejar la bibliografía se puede utilizar [JabRef](https://github.com/JabRef/jabref), editando [src/bibliografia.bib](src/bibliografia.bib)
- En el archivo [apendiceEjemplos](src/apendiceEjemplos.tex) se encuentran algunos ejemplos útiles para la elaboración de la memoria
- Un resumen de los comandos de *LaTeX* está disponible en [LaTeX Command Summary](LaTeX Command Summary.pdf)

Instalación completa (dependencias)
----
### GNU/Linux
##### Ubuntu/Debian based
Instalar con *aptitude*
```sh
$ sudo apt-get install texlive-full
```
##### Fedora
Instalar con *yum*
```sh
$ sudo yum install texlive-scheme-full
```
##### Arch Linux/Manjaro
Instalar con *pacman*
```sh
$ sudo pacman -S texlive-most
```
##### Gentoo Linux
Instalar con *emerge*
```sh
$ USE="X cjk context detex dvi2tty epspdf extra graphics humanities jadetex luatex metapost omega pdfannotextractor png pstricks publishers science tex4ht texi2html truetype xetex xindy xml" LINGUAS="en en_GB es" sudo emerge texlive
```

### Windows
[Instalar proTeXt](https://tug.org/protext/) o [Instalar TeXLive](https://www.tug.org/texlive/)

### Mac/OS X
[Instalar MacTeX](https://tug.org/mactex/)

Comandos
----
Si prefieres no utilizar un editor gráfico de *LaTeX* ([Texmaker](http://www.xm1math.net/texmaker/), [TeXworks](https://www.tug.org/texworks/)), puedes usar los siguientes comandos (*GNU/Linux*, *Mac*):
#### Borrar archivos auxiliares
```sh
$ ./limpiar.sh
```

#### Generar el documento PDF a partir del código fuente
```sh
$ ./compilar.sh
```

Autores
----
Este proyecto ha sido desarrollado por:
- Rafael Leira Osuna ([@ralequi](https://github.com/ralequi))
- Diego Hernando Loeda ([@dloeda](https://github.com/dloeda))
- Jose Fernando Zazo ([@jfzazo](https://github.com/jfzazo))
- Mario Daniel Ruiz Noguera ([@mariodruiz](https://github.com/mariodruiz))
- Sid ([@JSidrach](https://github.com/JSidrach)), al que hay que agradecer en especial su contribución a la creación de una plantilla facil de utilizar, así como la primera versión de github disponible
- Pablo Molins ([@molins](https://github.com/molins))

Licencia
----
El código fuente se ha publicado bajo la [licencia MIT](LICENSE). Los [documentos anexos de la convocatoria 2014-2015](doc/) pertenecen a la [Escuela Politécnica Superior](http://www.eps.uam.es) de la [Universidad Autónoma de Madrid](http://www.uam.es). Los logos proporcionados en la carpeta [graphics](graphics/) pertenecen también a sendas instituciones.

Contribuir
----
Si encuentras algún error o posible mejora no dudes en abrir una `Issue` o `Pull Request`
