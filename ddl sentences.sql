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

alter table familiar add column estatura float not null;
alter table familiar add column fecha_nacimiento date not null;

alter table familiar change column nombre nombre varchar(40) not null;
alter table familiar change column apellido apellido varchar(40) not null;

alter table familiar rename column fecha_nacimiento to fecha_de_nacimiento;

alter table familiar drop column estatura;
alter table familiar drop column fecha_de_nacimiento;
alter table familiar drop column apellido;
alter table familiar drop column nombre;

drop table if exists familiar;
drop database if exists mis_familiares;