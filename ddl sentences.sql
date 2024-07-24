create database if not exists mis_familiares;
use mis_familiares;
create table if not exists mi_familiar(
	id_familiar int not null auto_increment,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    primary key(id_familiar)
);

show databases;
show tables;

alter table mi_familiar rename to familiar;

