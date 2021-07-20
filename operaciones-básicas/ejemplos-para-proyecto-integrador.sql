/*Para mostrar los nombres y apellidos de usuarios que se registraron en x año. Por esto usamos YEAR(fecha) para buscar por año y no por fecha específica*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021';

/*Esta sentencia es para buscar los registros de 2020 y 2021*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021' OR YEAR(fecha) = '2021';

/*Traer todos los usuarios que se hayan registrado desde 2019*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';
/*Todas estas sentencias funcionan también con año, mes y fecha exacta*/

/*Traer todos los usuarios que NO se hayan registrado en 2020*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

/*Seleccionar registros por dos columnas*/
SELECT nombre, apellidos FROM usuarios WHERE email = 'taniagd09@gmail.com' AND password = '12345';
/*Sentencia utilizada comúnmente para un login*/

/*Elementos que contengan un texto
Si el % (porcentaje) va al principio del texto, la palabra buscada debe terminar con esa letra o palabra
Si el % (porcentaje) va al final del texto, la palabra a buscar debe empezar con esa letra o palabra
Cuando se coloca delante y detrás, por ejemplo: %o% no importa la posición en la que esté la letra o palabra*/
SELECT * FROM usuarios WHERE nombre LIKE '%o';

/**/
