# CI-LiterateProgramming
El principal objetivo de éste opensource es facilitar la manera en que los autores escriben sus de libros técnicos de programación. De ésta manera resulta más fácil, ya que el código que den como ejemplo lo verifican para saber si arrojó el resultado que ellos esperan.

La Integración contínua junto con la Programación Literaria es poco conocida, puesto que no hay mucha relación, sin embargo, en éste ... se explicará la configuración necesaria usando:

* Travis CI
* GitHub

También, se necesitará tener conocimiento de:

* Markdown
* Pweave
* SSH

Éstas herramientas nos ayudarán a verificar que el código que ahí se escriba está bien o mal y arrojándonos también las gráficas que de ellas resulten.

Puntos a conocer:

* La sintaxis que se escriba tiene que ser escrita con Markdown y los archivos extensión .md

## Literate Programming
La programación literaria, se refiere al modo en que se programa donde el código se explica con un lenguaje natural. Es diferente a la documentación, porque en el mismo documento se escribe el código con cierta sintaxis y al mismo tiempo se escribe sin código.

## Knitre 
Knitre es una librería que nos ayuda a arrojar los resultados que tengamos en un archivo .Rmd con código de R. 

Si queremos primero hacer las pruebas localmente, será necesario instalar R y la la librería, para ello, se deja el siguiente link donde se explica más a detalle:

http://yihui.name/knitr/


## GitHub
Primero, será necesario crear un repositorio donde alojaremos el código. Para ello, crearemos uno nuevo en github. A éste le llamaremos "Nuestrolibro"

Luego, será necesario relacionar nuestro repositorio con Travis CI.

Las razones por las que se usa GitHub son:

 - Nos ayudará a almacenar los archivos .md que serán los que contengan el libro
 - Junto con Travis, las gráficas que se generen al hacer la integración contínua se guardarán en una carpeta llamada  #### 

## TravisCI
En Travis se instalan todos los programas que se requieren. Para ello, en nuestro repositorio que contenga el libro, tendremos que crear un archivo llamado ".travis.yml". 
Lo que hace éste archivo es ejecutar todo lo que le digamos tal y como si estuvieramos en la consola de Linux. Para ver lo que es necesario correr en éste mismo repositorio se deja el script listo para su uso. A continuación se analizará lo que es necesario cambiar.

-------------

## SSH
Es necesario usar llaves ssh, ya que TravisCI al ser integración contínua, no podemos escribir nada cuando seestén ejecutando las pruebas, por ello, es necesario autentificarnos mediante ssh para poder subir los resultados a nuestro repositorio.


