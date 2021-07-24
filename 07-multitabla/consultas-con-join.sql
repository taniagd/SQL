/*JOINs nos permiten fusionar información de múltiples tablas
Mostrar las entradas con el nombre del autor y de la categoría*/
SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre /*Tráeme estos datos */
FROM entradas /*de la tabla entradas*/
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id /*Tráeme los resultados de la tabla usuarios cuando entradas.usuario_id sea igual a usuarios.id*/
INNER JOIN categorias ON entradas.categoria_id = categorias.id;/*Consuálos cuando entradas.categoria_id sea igual a categorias_id*/

/*Quiero obtener datos que están en tablas distintas y para que éstos se muestren en una sola tabla, usaré join
*/

SELECT e.id, e.titulo, u.nombre, c.nombre /*La e se refiere a tabla "entradas", u a "usuarios" y c a "categorias" */
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id 
INNER JOIN categorias c ON e.categoria_id = c.id;
/*Abreviar el nombre de las tablas es más cómodo y más rápido*/

/*Obtener el número de entradas por categorías*/
SELECT c.nombre, COUNT(e.id) FROM categorias c 
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;
/*INNER pide todos los elementos de */

SELECT c.nombre, COUNT(e.id) FROM categorias c 
LEFT JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;
/*Cuando usamos left join*/

/**/
/**/
/**/
/**/