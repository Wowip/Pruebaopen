# CI-LiterateProgramming
La Integración contínua junto con la Programación Literaria resulta poco familiar, puesto que no hay mucha relación ni información de ámbas herramientas juntas. Éste Opensource ayudará principalmente a los autores de libros técnicos que quieran integrar el código que se encuentre en sus libros. esto resulta apropiado, puesto que muchas veces los autores prueban los ejercicios de sus libros en sus propias máquinas y no en un entorno límpio, es decir, muchas veces se cree que el lector tiene ya todas las herramientas necesarias.

En éste OpenSource se explica la configuración para poder realizar libros técnicos de programación aplicando la integración contínua. Para ello es necesario usar:

* Travis CI
* GitHub

Y tener conocimiento de:

* Markdown
* Knitr
* SSH

Éstas herramientas nos arrojarán los resultados que se programen, sin necesidad de que los autores lo prueben y además, arrojándonos las gráficas que de ellas resulten.

Una de las principales razones por las que se realiza de ésta manera es porque las computadoras son diferentes en cuanto al autor y al lector.


## Literate Programming
La programación literaria, se refiere al modo en que se programa donde el código se explica con un lenguaje natural. Es diferente a la documentación, porque en el mismo documento donde se escribe con lenguaje normal, se dan los resultados que arroja que código que pongamos como ejemplo o ejercicio.

Cabe resaltar que existen diferentes librerias dependiendo el lenguaje que estemos usando, en este caso, usaremos una librería llamada Knitr, la cual está dirigida al lenguaje de programación R.


## Knitre 
Knitre nos ayuda a realizar la programación literaria ya que es una librería de R, la cual nos arroja los resultados que tengamos en un archivo .Rmd con código de R y nos devuelve un nuevo archivo .md, el cual es muy fácil de visualizarlos.

Si queremos primero hacer las pruebas localmente, será necesario instalar R y Knitr y para ello, se deja el siguiente link donde se explica más a detalle la instalación y la sintaxis que se debe usar para poner el código que se reconocerá y se ejecutará.

http://yihui.name/knitr/

En éste OpenSource, la instalación se encuentra en el archivo .travis.yml, por lo que no será necesario instalarlo en nuestra computadora, pero si se quiere se puede hacer.


## GitHub
Github nos ayudará a alamecenar los archivos .md. Estos archivos contrendrán los reusltados que se obtengan del código a partir de los archivos .Rmd. Es necesario crear un nuevo repositorio y vincularlo con TravisCI

Github nos ayudará a:

 - Almacenar los archivos .Rmd y .md.
 - Junto con Travis, las gráficas que se generen al hacer la integración contínua se guardarán en una carpeta llamada images. 


## TravisCI
En Travis se instalan todos los programas que se requieren a partir del script llamado ".travis.yml". Éste archivo tiene que estar en nuestro repositorio.

Lo que hace éste archivo es ejecutar todo lo que le digamos tal y como si estuvieramos en la consola de Linux. en éste Opensource se deja el script listo para su uso y si se quiere, se puede clonar este OpenSource sólo cambiando las llaves SSH que más abajo se explicará.


## SSH
Es necesario crear llaves ssh, ya que Travis CI al ser una herramienta de integración contínua, nos pedirá autenficiarnos para hacer push a nuestro repositorio y subir los archivos .md que se generen.

Para generar las llaves, entramos a la carpeta con el siguiente comando

	cd ~/.ssh

Después, creamos las llaves

	ssh-keygen

Seguidamente, copiamos estas llaves creadas y las subimos a nuestro repositorio github en una carpeta nueva llamada ".ssh", ésta carpeta contendrá los archivos "id_rsa", "id_rsa.pub" y "known_hosts.

##Worklflow

![Workflow](https://github.com/Wowip/Pruebaopen/blob/master/Subir.png)


