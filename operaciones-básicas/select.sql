/*Select sirve para obtener registros de una base de datos*/
SELECT * FROM usuarios;
/*Sentencia SELECT + asterico (que representa todos los elementos) + FROM + nombre de la tabla*/

/*Select para obtener datos específicos de una columna de la tabla*/
SELECT nombre, apellidos FROM usuarios;
/*Sentencia SELECT + nombre de las columnas de las que queremos los datos separadas por comas + FROM + nombretabla*/
SELECT email, password FROM usuarios;
SELECT email FROM usuarios;