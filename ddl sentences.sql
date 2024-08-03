create database if not exists mis_familiares;
use mis_familiares;
create table if not exists familiares(
	id_familiar int not null auto_increment PRIMARY KEY,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    -- primary key(id_familiar)
);

show databases;
show tables;
describe familiares;

alter table familiares rename to mis_otros_familiares;

alter table mis_otros_familiares add column estatura float unsigned not null;
alter table mis_otros_familiares add column fecha_nacimiento date not null;

alter table mis_otros_familiares change column nombre nombre varchar(40) not null;
alter table mis_otros_familiares change column apellido apellido varchar(40) not null;

alter table mis_otros_familiares rename column fecha_nacimiento to fecha_de_nacimiento;

alter table mis_otros_familiares drop column estatura;
alter table mis_otros_familiares drop column fecha_de_nacimiento;
alter table mis_otros_familiares drop column apellido;
alter table mis_otros_familiares drop column nombre;

drop table if exists mis_otros_familiares;
drop database if exists mis_familiares;