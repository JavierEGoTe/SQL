/*Renombrar la tabla*/
ALTER TABLE usuarios RENAME TO usuarios_renom;

/*Renombraruna clumna*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/*Modificar la columna sin cambiar el nombre*/
ALTER TABLE usuarios_renom MODIFY apellido VARCHAR(50) NOT NULL;

/*Añadir columna*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NOT NULL;

/* Añadir una restriccion a una columna*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email); 

/* Borrar una columna */
ALTER TABLE usuarios_renom DROP website;