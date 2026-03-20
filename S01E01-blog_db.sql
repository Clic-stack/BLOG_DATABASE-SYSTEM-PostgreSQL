-- Creación de tablas
-- Creación de tabla users
create table users (
id serial primary key,
first_name varchar(50),
last_name varchar(50),
email varchar(50)
);

-- Mostrando tabla users
select * from users;

-- Creación de tabla posts
create table posts (
id serial primary key,
user_id int references users(id),
title varchar(100),
text text
);

-- Mostrando tabla posts
select * from posts;

-- Creación de tabla likes
create table likes (
id serial primary key,
user_id int,
post_id int
);

-- Eliminando tabla likes
delete from likes;

-- Creación de tabla pivote likes
create table likes (
id serial primary key,
user_id int references users(id),
post_id int references posts(id)
);

-- Mostrando tabla likes
select * from likes;

-- Añadir información a las tablas
-- Añadiendo 3 usuarios a tabla de usuarios
insert into users (first_name, last_name, email) values
('Pancha', 'Cuevas', 'panchita@example.com'),
('Pablo', 'Colmena', 'pablito@example.com'),
('Mercedes', 'Ribas', 'mercedes@example.com');

-- Mostrando tabla con usuarios
select * from users;

-- Añadiendo 5 posts a tabla de posts
insert into posts (user_id, title, text) values
(1, 'Aprendiendo psql', 'Postgres es un motor de base de datos relacional, bastante utilizado al hacer aplicaciones con nodejs.'),
(2, 'Conociendo los principales comandos para la creación de bases de datos con postgres', 'Crear base de datos: create database <name_database>;\nListar bases de datos: \l\nConectarse a base de datos: \c <name_database>\nEliminar base de datos: drop database <name_database>\nEliminar tabla: drop table <name_table>\nLimpiar consola: \!cls o \!clear;\netc...'),
(3, 'Aprendiendo sobre tipos de datos en tablas con postgres', 'Existen diversos tipos de datos en tablas, pero estos son los más comunes:\nNuméricos: int, bigint, decimal, serial.\nTexto: varchar, text.\nBooleanos: boolean.\nFechas y horas: timestamp, date, time.'),
(1, 'Aprendiendo a poner restricciones a una base de datos', 'not null: No permite dejar un campo vacío\n null: Si no se envía un campo queda null por defecto\n unique: No permite crear un registro con un campo ya existente\n primary key: El campo con está restricción representará a dicha tabla al momento de usar relaciones\n check: Evalua cada vez que introducimos un dato'),
(2, 'CRUD con postgres', 'Esta operación nos permite agregar registros a tablas por medio del comando insert into, consultar datos en una tabla con el comando select * from, actualizar registros con update y eliminar registros con delete\n Para mayor información al respecto consultar la siguiente pagina https://jesus-fernandez.notion.site/CRUD-con-postgres-28a339baf0288094bfd4e2d750245c34');

-- Mostrando tabla con posts
select * from posts;

-- Actualizando posts 
update posts set
text = 'Crear base de datos: create database <name_database>;
Listar bases de datos: \l
Conectarse a base de datos: \c <name_database>
Eliminar base de datos: drop database <name_database>
Eliminar tabla: drop table <name_table>
Limpiar consola: \!cls o \!clear;
etc...'
where user_id = 3; 

-- Añadiendo 5 likes a tabla de likes
insert into likes (user_id, post_id) values
(1, 3),
(2, 5),
(3, 6),
(1, 18),
(2, 8);

-- Mostrando tabla con likes
select * from likes;

-- Trayendo todos los posts y la información del usuario del campo user_id
select * from posts
join users
on posts.user_id = users.id;

-- Trayendo todos los posts, con la información de los usuarios que les dieron like.
select * from users
join likes
on users.id = likes.user_id
join posts
on likes.post_id = posts.id;


