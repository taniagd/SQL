/*Where se utiliza para hacer referencia a un conjunto de elementos específicos de una tabla*/

SELECT nombre, email FROM usuarios WHERE id = 4;
/*Sentencia SELECT + nombre de las columnas + FROM + nombretabla + WHERE + condición (id =4)
Entrará a la tabla y solo me traerá la info del id 4*/

SELECT * FROM usuarios WHERE email = 'taniagd09gmail.com';
SELECT * FROM usuarios where nombre != 'Tania Belen'; /*Buscar todos los nombres que no sean Tania Belen porque usamos el operador ! Not*/

/*Estos operadores los podemos usar al hacer búsquedas:
OPERADORES DE COMPARACIÓN:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/
