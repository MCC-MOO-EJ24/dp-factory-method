# Factory Method - Caso práctico

## Intención

Define una interface para crear un objeto, pero difiere a las subclases la decisión de cual clase instanciar. Factory Method permite que una clase difiera la instanciación de objetos a subclases.

## Clasificación

Patrón Creacional

## Vista Estructural

![image](https://user-images.githubusercontent.com/84739791/225982810-f5f3c93d-7619-43c3-8b22-722629d8a324.png)

## Vista Dinámica

![image](https://user-images.githubusercontent.com/84739791/225982883-11aa4829-3f72-4d39-9447-35b6231e5dd3.png)

## Ejemplo Real

Imaginemos un escenario donde deseamos tener la opción de conectarnos a dos bases de datos distintas, como 
Oracle y MySQL, esto podría darse por la necesidad de darle a los usuarios de 
nuestra aplicación la posibilidad de tener una base de datos robusta como Oracle, 
o una opción más económica como MySQL. Sea cual sea el motivo por el cual el 
usuario decide utilizar una base de datos, nosotros tenemos que tener los 
mecanismos para soportarla.

Para esto desarrollaremos una clase de acceso a datos (DAO) de productos que 
nos permite guardar productos y consultarlos, el principal objetivo es que el cliente 
pueda utilizar el mismo DAO sin la necesidad de cambiar de clase dependiendo 
la base de datos a utilizar.

Solución sin el patrón Factory Method:

![image](https://user-images.githubusercontent.com/84739791/225983252-5ac532f2-4d54-4cce-b9d8-7712eff3cdd2.png)

Solución con el patrón Factory Method:

![image](https://user-images.githubusercontent.com/84739791/225983461-403f3457-fbe2-47d5-ab96-534e755fb238.png)

![image](https://user-images.githubusercontent.com/84739791/225983566-b369a530-211f-485d-987c-d46af51a4ad9.png)

## Ejecucion

### Comando para crear el contenedor MySQL 
```
cd dockermysql
docker build -t pos-mysql:0.1 .
```

### Comando para ejecutar el contenedor MySQL
```
docker run --detach --name=posmysql --publish 3306:3306 pos-mysql:0.1
```
### Revisa la base de datos MySQL

1. clic en la opción en la opción ```Database``` de la barra de herramientas izquierda. Clic en ```Create connection```.
2. Selecciona ```MySql```. Usa los valores por default y sólo captura el password: ```1234```. Clic en ```Connect```. Revisa la base de datos ```pos``` en el explorador de bases de datos del lado izquierdo.

### Comandos para crear el contenedor Oracle
```
docker pull gvenzl/oracle-xe:21-full

docker run -d -p 1521:1521 -e ORACLE_PASSWORD=SysPassword1 -v oracle-volume:/opt/oracle/XE21CFULL/oradata gvenzl/oracle-xe:21-full
```
### Script SQL  para crear la tabla ```Productos```

1. clic en la opción ```Database``` de la barra de herramientas izquierda. Clic en ```Create connection```.
2. Selecciona ```Oracle```. Usa los valores por default y sólo captura el password: ```SysPassword1 ``` (con espacio al final). Clic en ```Connect```.
3. Ir al script ```pos.sql``` en el Explorador de Archivos. Clic en ```Execute```.
4. Refresca las tablase de la opción ```Database```. La tabla ```Productos``` vacía debe mostrarse.

### Ejecutar Java-App 

* Cargue las Extensiones Java de VS Code correcta y completamente.
* En la clase principal de clic sobre el botón Play.

