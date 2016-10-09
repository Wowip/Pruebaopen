	# CI-LiterateProgramming
La Integración contínua junto con la Programación Literaria es poco conocida, puesto que no hay mucha relación, sin embargo, en éste OpenSource se explicad la configuración para poder realizar libros técnicos de programación aplicando la integración contínua. Para ello es necesario usar:

* Travis CI
* GitHub

También, se necesitará tener conocimiento de:

* Markdown
* Pweave
* SSH

Éstas herramientas nos ayudarán a dar el resultado que el código que ahí se escriba, sin necesidad de probarlo nosotro mismos y arrojándonos también las gráficas que de ellas resulten.

Una de las principales razones por las que se realiza de ésta manera es que las computadoras son diferentes en cuanto a la persona que escribe el libro y a quien va dirigido.

## Literate Programming
La programación literaria, se refiere al modo en que se programa donde el código se explica con un lenguaje natural. Es diferente a la documentación, porque en el mismo documento donde se escribe con lenguaje normal, se dan los resultados que arroja que código que pongamos como ejemplo.

## Knitre 
Knitre nos ayuda a usar la programación literaria ya que es una librería que nos ayuda a arrojar los resultados que tengamos en un archivo .Rmd con código de R. 

Si queremos primero hacer las pruebas localmente, será necesario instalar R la la librería, para ello, se deja el siguiente link donde se explica más a detalle la instalación y la manera en que se realiza.

http://yihui.name/knitr/

En éste opensource, se integra de manera contínua y la instalación y los reusltados que arroje ya están en el archivo .travis.yml


## GitHub
Será necesario crear un repositorio donde alojaremos el código. Para ello, crearemos uno nuevo en github. A éste le llamaremos "Nuestrolibro"

Luego, será necesario relacionar nuestro repositorio con Travis CI.

Las razones por las que se usa GitHub son:

 - Nos ayudará a almacenar los archivos .md que serán los que contengan el libro
 - Junto con Travis, las gráficas que se generen al hacer la integración contínua se guardarán en una carpeta llamada  manuscript 

## TravisCI
En Travis se instalan todos los programas que se requieren. Para ello, en nuestro repositorio que contenga el libro, tendremos que crear un archivo llamado ".travis.yml". 
Lo que hace éste archivo es ejecutar todo lo que le digamos tal y como si estuvieramos en la consola de Linux. en éste Opensource se deja el script listo para su uso. 


## SSH
Es necesario crear llaves ssh, ya que TravisCI al ser integración contínua, no podemos autentificarnos para hacer push a nuestro repositorio y subir los archivos .md que se generen.

Para generar las llaves, entramos a la carpeta con el siguiente comando

	cd ~/.ssh

Después, creamos las llaves

	ssh-keygen

Seguidamente, copiamos todas las llaves que generamos y las subimos a nuestro repositorio github en una carpeta nueva llamada ".ssh", ésta carpeta contendrá los archivos "id_rsa", "id_rsa.pub" y "known_hosts


