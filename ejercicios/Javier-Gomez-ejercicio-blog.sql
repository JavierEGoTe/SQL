CREATE SCHEMA ejercicio;

USE ejercicio;
CREATE TABLE usuarios(
    id          int AUTO_INCREMENT NOT NULL,
    nombre      VARCHAR(100) NOT NULL,
    apellidos   VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL,
    password    VARCHAR(100) NOT NULL,
    fecha date NOT NULL,
    CONSTRAINT   pk_usuarios PRIMARY KEY(id)
);
CREATE TABLE entradas(
	id          int AUTO_INCREMENT NOT NULL,
    usuario_id  int NOT NULL,
    categoria_id int NOT NULL,
    titulo      VARCHAR(200) NOT NULL,
    descripcion text NOT NULL,
    CONSTRAINT   pk_usuarios PRIMARY KEY(id)
);
CREATE TABLE categorias(
	id          int AUTO_INCREMENT NOT NULL,
    nombre		varchar(100) NOT NULL,
    CONSTRAINT   pk_usuarios PRIMARY KEY(id)
);
ALTER TABLE entradas ADD CONSTRAINT fk_entradas_usuarios FOREIGN KEY(usuario_id) REFERENCES usuarios(id);
ALTER TABLE entradas ADD CONSTRAINT fk_entradas_categorias FOREIGN KEY(categoria_id) REFERENCES categorias(id);