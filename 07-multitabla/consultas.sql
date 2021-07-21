/* Joins nos permiten fusionar informacion de multiples tablas *7

/*Mostrar las entradas con el nombre del autos y de la categoria */
SELECT entradas.id, entradas.titulo,usuarios.nombre, categorias.nombre
FROM entradas
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id;

SELECT e.id, e.titulo,u.nombre, c.nombre
FROM entradas e
INNER JOIN usuarios u ON e.u_id = u.id
INNER JOIN categorias c ON e.c_id = c.id;

/* Obtener el numero de entradas de categorias */
SELECT c.nombre, COUNT(e.id) FROM categorias categorias
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;