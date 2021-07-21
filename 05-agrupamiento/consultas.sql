/*Consulta para obtener el número de entradas por categoría*/
SELECT COUNT(titulo), categoria_id FROM entradas;
/*Sentencia SELECT + count (para generar un conteo) + entre paréntesis va el elemento que queremos contar + columna de la que queremos obtener la info + FROM + nombre_tabla + GROUP BY*/

SELECT COUNT(titulo), categoria_id FROM entradas GROUP BY categoria_id;
/*Agrupa por cosas en común, por ejemplo, en el caso del id. Necesito que cuente cosas, los títulos y que me traiga la categoría id de la tabla de entradas y además que esos elementos los agrupe por categoría id*/

SELECT COUNT(titulo) AS 'número de entradas', categoria_id FROM entradas GROUP BY categoria_id;
/*Esto es para renombrar temporalmente una columna, para efectos de visualización de datos. El renombre dura solo para la consulta y no afecta al nombre de nuestra columna en la tabla*/

/*No se puede usar WHERE cuando se usa GROUP BY, para esos casos, va lo siguiente:*/

/*Consulta agrupada con condiciones*/
SELECT COUNT(titulo) AS 'número de entradas', categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >= 4;
/*Esto significaa: Trae los t+itulos y cuéntalos junto con las categoria_id de la tabla entradas y agrpálas por categoria_id
cuando el número de entradas sea mayor o igual a 4*/


/*Nos permite sacar el promedio de elementos numéricos*/
SELECT AVG(id) AS 'Promedio id' FROM entradas;
/*Nos permite obtener el núnmero mayor.Podría usarse para decir el costo mayor de una serie de items*/
SELECT MAX(id) AS 'Maximo id' FROM entradas;
/*Nos permite conocer el número mínimo*/
SELECT MIN(id) AS 'Minimo id' FROM entradas;
/*Nos permite sumar elementos numéricos. Podría usarse para calcular el total de una compra*/
SELECT SUM(id) AS 'Suma de ids' FROM entradas;
/*Consultar el promedio de elementos de la tabla entradas cuyo id es 1*/
SELECT AVG(id) AS 'Promedio de id' FROM entradas WHERE categoria_id = 1;


/**/
/**/
/**/