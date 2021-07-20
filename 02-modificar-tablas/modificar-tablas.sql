/*Renombrar la tabla*/
ALTER TABLE usuarios RENAME TO usuarios_renom; /*Alter table es la sentencia para modificar tabla, seguido del nombre de tabla RENAME TO nuevonombre*/

/*Renombrar una columna*/
ALTER TABLE usuarios_renom CHANGE lastname apellido VARCHAR(100) NULL;
/*Usamos alter table + nombre de la tabla (el nuevo en este caso, pues la renombramos) + CHANGE + nombre de la columna + nuevo nombre de la columna + tipo de dato*/

/*Modificar la columna sin cambiar el nombre*/
ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;
/*Alter table + nombretabla + MODIFY + nombre de la columna (renombrada en el paso anterior + nuevo tipo de dato para la columna)

/*Añadir columna*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;
/*Alter table + nombretabla + ADD + nueva columna + tipo de dato de la columna*/

/*Añadir una restricción a una columna*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);
/*Alter table + nombretabla + add constraint (añadir restricción) + uq_email (nombre de mi restricción: uq de unique_nombrecolumna) + UNIQUE + nombrecolumna. 
Todo esto para que no haya dos emails iguales en la base de datos*/

/*Astrik dice: A mi me funciono esto para añadir restricción a dos columnas:
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email_password UNIQUE (email, password);
*/

/*Borrar una columna*/
ALTER TABLE usuarios_renom DROP website;
/*Alter table + nombretabla + DROP + nombrecolumna*/

/*Primero se crean las tablas que no tienen referencias a llaves foráneas*/