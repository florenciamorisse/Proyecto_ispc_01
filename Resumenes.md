# Guía de estudio Introducción a las bases de datos

## 01.Historia y evolución de los sistemas gestores de los SGBD
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

## 02.Historia y evolución de los sistemas gestores de los SGBD II

 Gestores de Bases de Datos.

 Gestores de Bases de Datos
 main
Los gestores de bases de datos, Database Management System o DBMS (SGBD) son programas que permiten almacenar y luego acceder a los datos de forma estructurada y rápida.
Una base de datos es un sistema compuesto por un conjunto de datos, los cuales están almacenados en discos, a los que se accede directamente y un conjunto de programas que regulen o manejen ese conjunto de datos.
Mientras que un sistema de Gestión de Bases de Datos es un software que sirve de interfaz entre la base de datos, el usuario y las aplicaciones que se utilizan.

Los mejores gestores de base de datos
El principal lenguaje de base de datos y el más utilizado desde que se conoce la programación degestión, es el Structured Query Language (SQL). Este, de consulta estructurada, facilita el acceso a la gestión de las bases de datos relaciones, lo que permite realizar tareas en ellas y realizar consultas, que sirvan para obtener, agregar, eliminar o modificar información.



Oracle
 Es de los más confiables sistemas de gestión de base de datos relacional, además del más usado
Es propiedad de Oracle Corporation y fue desarrollado en 1977.
Se accede directamente a los objetos, a través del lenguaje de consulta SQL la versatilidad le facilita ejecutarse en casi todas las plataformas existentes, Windows, Unix, Linux, MAC OS 

SQL Server
En competencia directa a Oracle, está SQL Server de Microsoft. SQL Server se ejecuta en Transact-SQL y pueden añadir características al programa, como tratamiento de errores y excepciones, extracción de datos de la web en forma directa, procesamiento de datos, uso de distintos lenguajes de programación y otros más, que lo hacen un gestor muy completo y competitivo
    Gestores de base de datos de acceso libre
MySQL
           Este es de simple instalación y actúa de lado del cliente o servidor, es de código abierto y tiene licencia comercial disponible. Pertenece a Oracle Corporation y gestiona las bases de datos relacionales, con funciones multiusuario y es el más usado dentro del software libre.
Fire Bird
            De gran potencia y muy sencillo a la vez, este sistema de gestión de base de datos relacional SQL, es uno de los mejores gestores Open Source (Código abierto) o libres. Es compatible con Windows y Linux.



## 03.Introducción a las bases de datos
 
## 04.Sistemas gestores de Bases de Datos

## 05.Diseño de bases de datos relacionales

Existen 2 formas para la contrucción de modelos relacionales:

    * Creando un conjunto de tablas iniciales y aplicando operaciones de normalización hasta conseguir el esquema más óptimo.
    * Convertir el modelo ER en tablas, con una depuración lógica y la aplicación de restricciones de integridad.
  
Se estudia un aspecto fundamental de las bases de datos: su diseño.
    En las bases de datos se ha establecido un ciclo de desarrollo que consta de tres etapas de diseño: el diseño conceptual,el diseño lógico y el diseño físico.
#### Etapas de diseño 
    La metodología de diseño de bases de datos relacionales se ha consolidado a lo largo de los años satisfaciendo las propiedades de generalidad (independencia de la plataforma hardware/software), calidad del producto (precisión, completitud y eficacia) y facilidad de uso. 

#### Diseño conceptual

Objetivo: definir las entidades y las relaciones entre ellos de forma abstracta. Herramienta: Modelo conceptual de datos. Se usa alguna variante del modelo entidad-relación para las bases de datos relacionales. 
Resultado: Esquema conceptual de la base de datos. 

#### Diseño lógico
 Objetivo:definir el esquema de la base de datos según el modelo que implementa el SGBD. Herramienta: Modelo lógico de datos. Se usa el modelo lógico que implemente el sistema de gestión de bases de datos objetivo, pero es independiente de los aspectos físicos. Se usan técnicas formales para verificar la calidad del esquema lógico; la más usual es la normalización. Resultado: Esquema lógico de la base de datos. 

**Diseño físico**. Objetivo: definir el esquema físico de la base de datos de forma que se den todas las instrucciones para que un DBA pueda implementar la base de datos sin ninguna ambigüedad.  Herramienta: Modelo físico de datos. Se consideran todos los detalles de la implementación física: organización de archivos e índices para el SGBD considerado. Resultado: Esquema físico de la base de datos. 

__Diseño físico__: El objetivo  es la generación del esquema físico de la base de datos en el modelo de datos que implementa el SGBD. Es decir, la definición de las tablas con sus campos, la imposición de las restricciones de integridad y la definición de índices. Este último  son estructuras de datos implementadas con ficheros que permiten un acceso más eficaz a los datos. Se organizan con respecto a uno o más campos (los denominados campos clave del índice) y guardan sólo la información del valor de la clave y la dirección física a partir de la cual se pueden encontrar registros con ese valor. Los índices son secuencias de registros que tienen dos campos: el valor de la clave y la dirección física del registro del fichero de datos .Los índices permiten disminuir el tiempo de entrada/salida  a disco. Cuando el SGBD necesita buscar un registro según un valor de un campo (por ejemplo, un número de DNI), busca el valor en el índice, consulta la dirección del registro adjunto y a continuación busca en el fichero de datos (donde se almacenan los datos de la tabla correspondiente) el registro. Los índices se organizan como estructuras que permiten localizar el valor en menos tiempo. Si se declara un índice, ese índice se debe mantener actualizado cada vez que la tabla sufra cualquier modificación.  Por otra parte, si hay alternativas, siempre es mejor definir índices para los campos de menor amaño, ya que cuanto más pequeño sea el campo clave, más pequeño será el índice y se necesitarán menos operaciones de lectura del índice.Los índices únicos indican que se aplican sobre campos en los cuales no debe haber elementos repetidos. Todas las claves primarias llevan asociado un índice de forma predeterminada. También se puede indicar que acepten valores nulos o no. Si se aceptan, el índice permitirá esos valores nulos, pero los registros que los contengan no estarán apuntados por el índice. 
 __Restricciones de integridad:__ ayudan a mantener la consistencia semántica de los datos. Además de las restricciones de integridad definidas por las claves, las restricciones de cardinalidad y las de participación total estudiadas anteriormente, se tratan las restricciones de los dominios, la integridad referencial, las dependencias funcionales y las dependencias multivaloradas. Las restricciones de integridad proporcionan un medio de asegurar que las modificaciones hechas a la base de datos por los usuarios autorizados no provoquen la pérdida de la consistencia de los datos. Protegen a la base de datos contra los daños accidentales (no contra daños intencionados, de lo cual se ocupa la seguridad de las bases de datos). Los tipos de restricciones de integridad en una base de datos son: 
• Claves. 
• Cardinalidad de la relación.
• Restricciones de los dominios. 
• Integridad referencial. 
• Participación total.
• Dependencias funcionales. 
• Otras restricciones (Se recogen las restricciones que no se pueden catalogar en los casos anteriores.)
En las bases de datos tenemos los siguientes mecanismos para implementar las restricciones de integridad:  • Declaración de claves.• Declaración de integridad referencial.• Declaración de tipo de cardinalidad. • Disparadores (Triggers). 
 **Restricciones de los dominios** : son la forma más simple de restricción de integridad. Se especifica para cada atributo un dominio de valores posibles. Permite verificar los valores introducidos en la base de datos y también examinar las consultas para asegurarse de que tengan sentido las comparaciones que hagan. La cláusula check de SQL:1999 permite restringir los dominios de maneras poderosas que no permiten la mayor parte de los sistemas de tipos de los lenguajes de programación. La cláusula check permite especificar un predicado que debe satisfacer cualquier valor asignado a una variable cuyo tipo sea el dominio. Por ejemplo: Restricciones de existencia, esta restricción evita la aparición de valores nulos en las columnas. Se especifica indicando en la creación de la tabla cuáles son los atributos que no pueden contener valores nulos. De manera predeterminada, los atributos que formen parte de la clave primaria tienen esta restricción impuesta. Para declarar esta restricción en la definición de la tabla se usaría NOT NULL después del nombre del atributo y su dominio. Restricciones de unicidad :  se puede aplicar a cualquier dominio, evita la aparición de valores duplicados en las columnas (de forma parecida a lo que hace la clave rimaria). 
 **Restricciones de integridad referencial**: La integridad referencial permite asegurar que un valor que aparece en una relación para un conjunto de atributos determinado aparezca también en otra relación para ese mismo conjunto de atributos.  El sistema, por su parte, puede asegurar la imposición de estas restricciones de integridad, evitando la aparición de valores que las violen.La modificación de la base de datos puede ocasionar violaciones de la integridad referencial. Se distinguen tres casos: 
• Al insertar una tupla es necesario comprobar que haya otra con los valores de la clave externa igual a los de sus atributos clave.
• Al borrar una tupla de R el sistema debe calcular el conjunto de tuplas de las otras relaciones que hacen referencia a R. Si este conjunto no es el conjunto vacío, o bien se rechaza la orden borrar como error, o bien se deben borrar las todas las tuplas que hacen referencia a R. La última solución puede llevar a borrados en cascada, dado que las tuplas pueden hacer referencia a tuplas que hagan referencia a R, etcétera. 
• Actualizar. Hay que considerar dos casos: las actualizaciones de la relación que realiza la referencia (r2) y las actualizaciones de la relación a la que se hace referencia (r1).  
 **Dependencias funcionales**:Una dependencia funcional (DF) es una propiedad semántica de un esquema de relación que impone el diseñador. Determina el valor de un conjunto de atributos a partir del valor de otro conjunto de atributos.  Las dependencias funcionales se denotan de la siguiente forma: 
Conjunto de atributos que determinan → Conjunto de atributos determinados. Disparadores : Un disparador es un mecanismo que se puede usar para implementar restricciones de integridad no soportadas directamente por el SGBD. Es una orden que el sistema ejecuta de manera automática como efecto secundario de la modificación de la base de datos.Son mecanismos útiles para implementar restricciones de integridad, alertar a los usuarios o para realizar de manera automática ciertas tareas cuando se cumplen determinadas condiciones.  Normalización : Es necesario contar con una medida de la calidad de la agrupación de los atributos en relaciones. Como herramienta principal se usan las dependencias funcionales para agrupar los atributos en esquemas de relación, que se dice que se encuentran en una determinada forma normal.La forma normal de un esquema de relación determina su grado de calidad con respecto a reducir dos efectos no deseados: la redundancia de datos y las anomalías que produce esta redundancia. Es importante determinar en qué forma normal se encuentra un esquema de relación y el procedimiento, conocido como normalización, para descomponerlo en otros esquemas de relación que se encuentren en formas normales más exigentes.  
**Redundancia de datos** : Un objetivo del diseño de bases de datos relacionales es agrupar atributos en relaciones de forma que se reduzca la redundancia de datos y así el espacio de almacenamiento necesario. Las relaciones con datos redundantes presentan diferentes anomalías de actualización: son las anomalías de inserción, borrado y modificación.  Anomalías de actualización y Anomalías de inserción. Se produce en dos casos. En primer lugar, cuando se inserta una nueva fila sin respetar las dependencias funcionales. En segundo lugar, la imposibilidad de añadir nuevos datos para el consecuente de la dependencia funcional sin que exista un antecedente para ella.  Anomalías de modificación: Se produce cuando se modifican las columnas con datos redundantes de sólo un subconjunto de las filas con el mismo dato. Anomalías de eliminación: Se produce cuando se eliminan todas las filas en las que aparecen los datos redundantes por lo que se pierde los datos de la dependencia funcional. 
**Las  Formas normales y normalización**  : La forma normal de una relación se refiere a la mejor forma normal que satisface un esquema de relación indicando así el grado hasta el que se ha normalizado. La indicación del grado de calidad de un esquema de relación se refiere en general en el contexto global del esquema de la base de datos relacional, es decir, en el conjunto de todos los esquemas de relación de la base de datos. Dos propiedades que se deben cumplir para poder asegurarlo son: • La propiedad de preservación de dependencias, que asegura que las dependencias funcionales originales se mantienen en algún esquema de relación después de la descomposición.• La propiedad de la posibilidad de reproducir la información de la tabla antes de su descomposición a partir de las tablas resultado de ella.
Las formas normales más habituales, por orden ascendente deexigencia de las propiedades deseadas, son: Primera (1FN) , Segunda (2FN) ,Tercera (3FN) y Boyce/Codd (FNBC). La utilidad práctica de estas formas normales es cuestionable cuando las restricciones en que se basan son difíciles de entender o identificar por los diseñadores y usuarios. Así, en la práctica se usa hasta la forma normal de Boyce/Codd, aunque en general, los diseños prácticos exigen al menos 3FN. El proceso de asegurar una forma normal para un esquema se denomina normalización. 
 Primera forma normal establece que los dominios de los atributos sólo pueden ser atómicos, para evitar atributos multivalorados, compuestos y sus combinaciones. En definitiva evita las relaciones dentro de las relaciones.  Segunda forma normal : Se dice que una relación está en segunda forma normal si cada atributo que no forme parte de la clave primaria depende funcional y completamente de cada clave. Un esquema que no se encuentre en segunda forma normal puede traducirse en varios esquemas que sí lo estén. El procedimiento de normalización es crear tantas nuevas relaciones como dependencias funcionales no sean completas. 
Tercera forma normal : La tercera forma normal se basa en el concepto de dependencia funcional transitiva. Una dependencia funcional X →Y es una dependencia funcional transitiva si existe un conjunto de atributos Z que ni forman clave candidata ni son subconjunto de ninguna clave y además se cumple X → Z y Z →Y . Un esquema está en tercera forma normal si satisface la segunda forma normal y ninguno de los atributos que no forman parte de una clave candidata depende transitivamente de la clave primaria. El procedimiento para normalizar esta relación consiste el descomponerla en los atributos definidos por la dependencia funcional responsable de la transitividad. 
 Forma normal de Boyce-Codd: La forma normal de Boyce-Codd (FNBC) se propuso como una forma más simple que la tercera, pero más estricta porque cada relación en FNBC está en 3FN pero lo contrario no se cumple.  La FNBC evita redundancias que la 3FN no puede. 
Desnormalización para el rendimiento: A veces los diseñadores de bases de datos escogen un esquema que tiene información redundante; es decir, que no está normalizada. Utilizan la redundancia para mejorar el rendimiento para aplicaciones concretas. El proceso de tomar un esquema normalizado y hacerlo no normalizado se denomina desnormalización, y los diseñadores lo utilizan para ajustar el rendimiento de los sistemas para dar soporte a las operaciones críticas en el tiempo. 

 # Guia de estudios de metodologías ágiles y gestión de proyecto

 01. Metodología Scrum

 ## **02.GITHUB-VSC**

### **Clonar el repositorio con Visual Studio Code**

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

### **Ver los cambios en Github**

En GitHub dale a “Settings / Source y selecciona “Master Branch”. Visualiza tu web.

La URL de visualización tendrá el siguiente aspecto: https://nombredetucuenta/github.io/nombredeturepositorio/ (La página mostrada es la página index.html).

### Otros errores en la configuración de Github con Visual Studio Code

Error: command ‘git.clone’ not found
Para solucionar el error command ‘git.clone’ not found debemos instalar GIT e indicar por línea de comandos nuestro usuario e email:

$ git config --global user.name “Nombre"
$ git config --global user.email tumail@dominio.com

 03.GIT Y GITHUB
 
 04.GIT


