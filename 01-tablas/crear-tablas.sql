/*Escribir con mayúsculas para diferenciar qué código son sentencias. El resto son campos */
/*Crear una tabla. Se utiliza la sentencia CREATE TABLE nombretabla*/
/*use proyecto_integrador; Sentencia para referenciar esta tabla a esa base de datos*/

CREATE TABLE proyecto_integrador.usuarios( /* Otra forma de hacer la sentencia para vincular la tabla con la base de datos que queremos */
    id            INT AUTO_INCREMENT NOT NULL,
    name          VARCHAR(50) NOT NULL,
    lastname      VARCHAR(50) NOT NULL,
    email         VARCHAR(50) NOT NULL,
    password      VARCHAR(50) NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
)