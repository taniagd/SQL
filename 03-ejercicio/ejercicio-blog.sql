CREATE TABLE blog.usuarios( /*Creamos tabla "usuarios" refernciada en base de datos "blog"*/
    id            INT NOT NULL AUTO_INCREMENT, /*De esta línea hasta la 7, se colocan las columnas de las tablas con su tipo de dato*/
    nombre        VARCHAR(50) NOT NULL,
    apellidos     VARCHAR(50) NOT NULL,
    email         VARCHAR(50) NOT NULL,
    password      VARCHAR(50) NOT NULL,
    fecha         DATE NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id),
    CONSTRAINT uq_email UNIQUE(email)
);

CREATE TABLE blog.categorias( /*Creamos tabla "categorias" referenciada en base de datos "blog"*/
    id        INT NOT NULL AUTO_INCREMENT, /*De esta línea hasta se colocan las columnas de las tablas*/
    nombre    VARCHAR (100) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY(id)
);

CREATE TABLE blog.entradas( /*Creamos tabla "entradas" referenciada en base de datos "blog"*/
    id            INT NOT NULL AUTO_INCREMENT, /*De esta línea hasta  se colocan las columnas de las tablas*/
    usuario_id    INT NOT NULL,
    categoria_id  INT NOT NULL,
    titulo        VARCHAR(200) NOT NULL,
    descripcion   TEXT,
    fecha         DATE NOT NULL,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id) /*Para agregar foreign key.La fk se construye así: fk_nombredetablaensingular_nombretablaalaqueva: fk_entrada_usuario*/
    CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id) /*Para agregar foreign key*/
    /*Constraint + nombre de fk + FOREIGN KEY (nombre_columna a la que hace referencia) REFERENCES + pk*/
);


