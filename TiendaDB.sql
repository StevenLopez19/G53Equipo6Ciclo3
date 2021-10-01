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

create table clientes (
cedula_cliente bigint primary key,
nombre_cliente varchar(255) not null,
telefono_cliente varchar(255) not null,
direccion_cliente varchar(255) not null,
correo_cliente varchar(255) not null
);

select*from clientes;


create table proveedores (
nit_proveedor bigint primary key,
nombre_proveedor varchar(255) not null,
direccion_proveedor varchar(255) not null,
telefono_proveedor varchar(255) not null,
ciudad_proveedor varchar(255) not null
);




