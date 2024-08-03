CREATE database if NOT EXISTS mis_familiares;

use mis_familiares;

CREATE TABLE
    if NOT EXISTS familiares (
        id_familiar INT NOT NULL auto_increment PRIMARY KEY,
        nombre VARCHAR(20) NOT NULL,
        apellido VARCHAR(20) NOT NULL,
        -- primary key(id_familiar)
    );

show databases;

show tables;

DESCRIBE familiares;

ALTER TABLE familiares
RENAME TO mis_otros_familiares;

ALTER TABLE mis_otros_familiares
ADD COLUMN estatura FLOAT unsigned NOT NULL;

ALTER TABLE mis_otros_familiares
ADD COLUMN fecha_nacimiento DATE NOT NULL;

ALTER TABLE mis_otros_familiares change COLUMN nombre nombre VARCHAR(40) NOT NULL;

ALTER TABLE mis_otros_familiares change COLUMN apellido apellido VARCHAR(40) NOT NULL;

ALTER TABLE mis_otros_familiares
RENAME COLUMN fecha_nacimiento TO fecha_de_nacimiento;

ALTER TABLE mis_otros_familiares
DROP COLUMN estatura;

ALTER TABLE mis_otros_familiares
DROP COLUMN fecha_de_nacimiento;

ALTER TABLE mis_otros_familiares
DROP COLUMN apellido;

ALTER TABLE mis_otros_familiares
DROP COLUMN nombre;

DROP TABLE if EXISTS mis_otros_familiares;

DROP database if EXISTS mis_familiares;