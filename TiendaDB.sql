create database BLOCKSTORE;

use BLOCKSTORE;

#modulo login y usuarios
create table usuarios (
cedua_usuario bigint primary key,
email_usuario varchar(255) not null,
nombre_usuario varchar(255) not null,
password varchar(255) not null,
usuario varchar(255) not null
);

insert into usuarios values(001,'slc19@gmail.com','Steven López','12345','admin');
insert into usuarios values(001,'slc1901@gmail.com','Steven López','123','user1');
insert into usuarios values(001,'slc190160@gmail.com','Steven López','1234','user2');

select*from usuarios;

create unique index usuario_unico on usuarios(usuario);

