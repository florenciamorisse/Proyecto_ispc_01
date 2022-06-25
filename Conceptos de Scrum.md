# Proyecto_ispc_01
primer trabajo del ISPC en grupo 2022

#Ceremonias

#Artefactos

#Roles

# **Historia y Evolución de los SGBD**

 
### 1.Introducción
 
Para conocer la historia de la base de datos, debemos empezar por decir que la Base de Datos es un conjunto de información, agrupada o estructurada, que pertenecen a un mismo contexto y, en cuanto a su función, se utiliza para administrar de forma electrónica grandes cantidades de información. Pero engloba mucho más que eso, considerando la gran evolución que ha tenido a lo largo de la historia. En primer lugar, el conocer los acontecimientos que dieron lugar al sistema gestor de base de datos nos proporciona cobertura detallada y comprensiva de su origen. En segundo lugar, si en algún momento fuera necesario convertir un sistema de gestión de base de datos, alcanzar cómo trabaja este sistema puede ser una ayuda esencial en el ámbito de los negocios, diseño e implementación de estrategias para la relación cliente/servidor.

Hay programas denominados sistemas gestores de bases de datos, abreviado SGBD (del inglés Database Management System o DBMS), que permiten almacenar y posteriormente acceder a los datos de forma rápida y estructurada. Las propiedades de estos DBMS, así como su utilización y administración, se estudian dentro del ámbito de la informática.

### 2.Orígenes
Los orígenes de las bases de datos se remontan a la Antigüedad donde ya existían bibliotecas y toda clase de registros, su búsqueda era lenta y poco eficaz, el trabajo era manual.
Posteriormente, el uso de las bases de datos se desarrolló a partir de las necesidades de almacenar grandes cantidades de información o datos. Sobre todo, desde la aparición de las primeras computadoras.

En 1884, Herman Hollerith desarrolló el tabulador electromagnético de tarjetas perforadas con el fin de ayudar en el resumen de información.

En la década de los 50 (1950-1960) se da origen a las cintas magnéticas ayudando a la automatización de la información y realizar respaldos, pero con la desventaja de que solo se podía hacer de forma secuencial.

En los años sesenta, las aplicaciones informáticas acostumbraban a darse totalmente por lotes (batch) y estaban pensadas para una tarea muy específica relacionada con muy pocas entidades tipo.
A medida que se fueron introduciendo las líneas de comunicación, los terminales y los discos, se fueron escribiendo programas que permitían a varios usuarios consultar los mismos ficheros on-line y de forma simultánea. Más adelante fue surgiendo la necesidad de hacer las actualizaciones también on-line. A medida que se integraban las aplicaciones, se tuvieron que interrelacionar sus ficheros y fue necesario eliminar la redundancia.

Estos conjuntos de ficheros interrelacionados, con estructuras complejas y compartidas por varios procesos de forma simultánea (unos on-line y otros por lotes), recibieron al principio el nombre de Data Banks, y después, a inicios de los años setenta, el de Data Bases.

Durante la segunda mitad de los años setenta, fue saliendo al mercado software más sofisticado: los DataBase Management Systems, que aquí denominamos Sistemas de Gestión de BD (SGBD).
En otras palabras, una base de datos es un conjunto estructurado de datos que representa entidades y sus interrelaciones. La representación será única e integrada, a pesar de que debe permitir utilizaciones varias y simultáneas.

Con todo lo que hemos dicho hasta ahora, podríamos definir el término BD. Una base de datos de un SI (Sistema de Información) es la representación integrada de los conjuntos de entidades instancia correspondientes a las diferentes entidades tipo del SI y de sus interrelaciones.
Esta representación informática (o conjunto estructurado de datos) debe poder ser utilizada de forma compartida por muchos usuarios de distintos tipos.

# **RESUMEN GitHub-VSC**
##**Clonar el repositorio con Visual Studio Code**

Antes de comenzar a clonar el repositorio debemos instalar Visual Studio Code y Git.
https://code.visualstudio.com/download

Dentro de Git debemos definir nuestro usuario e email de la siguiente manera:
$ git config --global user.name “tunombre"
$ git config --global user.email tumail@dominio.com

Ahora vamos a clonar el proyecto creado en Github desde Visual Studio Code. Para ello, nos vamos al menú “view” seleccionamos “command palette”.
En ese punto buscamos “git: Clone”.
La herramienta nos pedirá la ruta y ahí es donde tenemos que pegar la URL del repositorio que hemos creado en el punto anterior en Github
De esta forma ya se ha creado nuestro repositorio y la herramienta nos va marcando los ficheros que vamos modificando.
Antes de hacer un commit debemos instalar la extensión “GitHub pull request” desde el menú view/terminal.

Además debemos autorizar nuestra cuenta Github en Visual Studio Code. Para ello, vete a la barra inferior de Visual Studio y presiona sobre el icono de Git e introduce tu cuenta de Github.
Desde la pestaña de Git podemos hacer el “commit” de los ficheros. En primer lugar, incluiremos los ficheros a los que queremos hacer stage pulsando en “+” o “todos”. Además debemos escribir el mensaje del Commit e Intro para terminar.
Para hacer push de los cambios o pull para copiar los datos de servidor podemos hacerlo de dos maneras:
•	Podemos pulsar en la parte derecha de la barra de git (icono tres puntos) y elegir la opción push o pull.
•	Podemos pulsar en la parte inferior sobre sincronizar (en este caso haríamos push y pull).

##**Ver los cambios en Github**

En GitHub dale a “Settings / Source y selecciona “Master Branch”. Visualiza tu web.

La URL de visualización tendrá el siguiente aspecto: https://nombredetucuenta/github.io/nombredeturepositorio/ (La página mostrada es la página index.html).

##Otros errores en la configuración de Github con Visual Studio Code

Error: command ‘git.clone’ not found
Para solucionar el error command ‘git.clone’ not found debemos instalar GIT e indicar por línea de comandos nuestro usuario e email:

$ git config --global user.name “Nombre"
$ git config --global user.email tumail@dominio.com
