/*Subconsultas son consultas que se ejecutan dentro de otras consultas*/

/* Consulta para saber que usuarios tienen publicaciones*/
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);
/*Consulta principal fue de todos los usuarios de la tabla, pero lo que está entre paréntesis es un subnivel donde se recopilan los usuarios que tienen entradas
IN manda múltiples condiciones */

/*En esta consulta obtenemos los id de los usuarios que tienen publicaciones*/
SELECT usuario_id FROM entradas;
/*Esta consulta representa los valores que recibe la consulta principal*/
SELECT * FROM usuarios WHERE id IN (1,1,1,2,2,2,3,3,3);
/*Esta consulta es equivalente a la anterior*/
SELECT * FROM usuarios WHERE id = 1 AND id = 2 AND id = 3;


/*Obtener los usuarios que tengan alguna entrada cuyo título contenga GTA*/
SELECT nombre, apellidos FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas WHERE titulo LIKE %GTA%);

/*Para obtener el usuario debo consultar la tabla usuarios. Quiero nombre y apellidos de usuario
donde id será igual y entra la subconsulta 
en tabla entradas tengo usuario id y está ligado al id de la tabla usuarios 
Necesito que me saques los usuario id de entradas CUANDO el título contenga la palabra GTA en cualquier posición
Esto devolvería un 1, porque es el id que corresponde. Pero yo pedí que me diera nimbre y apellidos */

/*Obtener todas las entradas de la categoría acción utilizando su nombre*/
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN 
(SELECT id FROM categorias WHERE nombre = 'Deportes');
/*Los equivalentes de esto serían:
categoria_id IN (1,2,3); Dentro de paréntesis se pueden ´poner múltiples valores, pero deben ser iguales a lo que aanteponemos
WHERE categoria_id = 1 AND categoria_id = 2 AND categoria_id = 3;*/


/*Obtener las categorías sin entradas*/
SELECT * FROM categorias WHERE id NOT IN (SELECT categoria_id FROM entradas);
/*Traer todas las columnas de la tabla categorias cuando el resultado NO sea
la categoria_id de la tabla entradas, es decir, las categorías sin publicaciones*/

/*Mostrar usuarios que crearon una entrada en un martes*/
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 4);
/*Traer todos los datos del usuario cuando
Subconsulta recuperar el usuario_id de la tabla entradas cuando el día de la semana sea x -numero correspondiente al día
Semana empieza en domingo y termina en sábado. Domingo es 1, lunes 2, martes 3*/