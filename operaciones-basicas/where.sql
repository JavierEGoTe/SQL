/*Where nos permite seleccionar elementos especificos*/
SELECT nombre, email FROM usuarios WHERE id=4;

SELECT * FROM usuarios WHERE email = 'javier@esteban.com';

SELECT * FROM usuarios WHERE nombre != 'Javier Esteban';

/*
OPERADORES DE COMPARACION:
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

/*Ejemplos*/

SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha)= '2020';

SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha)= '2020' OR YEAR(fecha)='2021';

SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';

SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

SELECT nombre, apellidos FROM usuarios WHERE email = 'javier@esteban.com' AND password = '5678';

/*Elementos que contengan texto*/
SELECT * FROM usuarios WHERE nombre LIKE '%o%';

/*Elementos que terminan en un texto*/
SELECT * FROM usuarios WHERE nombre LIKE '%o';

/*Elementos que inician con un texto*/
SELECT * FROM usuarios WHERE nombre LIKE 'o%';

 
