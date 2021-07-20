/*Insertar valores en una tabla*/
INSERT INTO usuarios VALUES(NULL,'Tania Belen', 'Gayosso Domínguez', 'taniagd09@gmail.com', '12345', '2021-07-20');
/*Sentencia INSERT INTO + nombretabla (a la que queremos ingresar valores) + VALUES (valores de la tabla en el orden de las columnas que creamos en esa tabla)
Ojo con el formato de fecha que de ser: AAAA-MM-DD */

INSERT INTO usuarios VALUES (NULL, 'Frida Citlalli', 'Guzmán Ortiz', 'fridaguz@gmail.com', '23648', '2021-08-15');
INSERT INTO usuarios VALUES (NULL, 'Efraín', 'Fortuno Vallejo', 'efrafv@outlook.com', '6327281', '2021-04-19');

/*Podemos usar truncate table en MYSQL dando click a la tabla y aplicándolo, para que se reinicie el contador o se elimine lo que está dentro de la tabla, sin eliminar la tabla*/

/*
Insertar datos en ciertas columnas*/
INSERT INTO usuarios (fecha, password, nombre, apellidos, email) VALUES ('2021-07-20', '12345', 'Karen', 'Torres Domínguez', 'karenja@gmail.com');
/* Sentencia INSERT INTO + nombretabla() en los paréntesis van el nombre de las columnas que queremos agregar + VALUES () En estos paréntesis van los datos en el mismo orden que los dispusimos en paréntesis de nombre_tabla*/