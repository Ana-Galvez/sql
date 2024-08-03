CREATE database IF NOT EXISTS mis_familiares;

use mis_familiares;

CREATE TABLE
    IF NOT EXISTS familiares (
        id_familiar INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(20) NOT NULL,
        apellido VARCHAR(20) NOT NULL,
        -- PRIMARY KEY (id_familiar)
    );

SHOW DATABASES;

SHOW TABLES;

DESCRIBE familiares;

ALTER TABLE familiares
RENAME TO mis_otros_familiares;

ALTER TABLE mis_otros_familiares
ADD COLUMN estatura FLOAT UNSIGNED NOT NULL;

ALTER TABLE mis_otros_familiares
ADD COLUMN fecha_nacimiento DATE NOT NULL;

ALTER TABLE mis_otros_familiares CHANGE COLUMN nombre nombre VARCHAR(40) NOT NULL;

ALTER TABLE mis_otros_familiares CHANGE COLUMN apellido apellido VARCHAR(40) NOT NULL;

ALTER TABLE mis_otros_familiares
RENAME COLUMN fecha_nacimiento TO fecha_de_nacimiento;
ALTER TABLE mi_familiar CHANGE COLUMN fecha_de_nacimiento fecha_de_nacimiento DATE NOT NULL DEFAULT "1900-01-01";

ALTER TABLE mis_otros_familiares
DROP COLUMN estatura;

ALTER TABLE mis_otros_familiares
DROP COLUMN fecha_de_nacimiento;

ALTER TABLE mis_otros_familiares
DROP COLUMN apellido;

ALTER TABLE mis_otros_familiares
DROP COLUMN nombre;

DROP TABLE IF EXISTS mis_otros_familiares;

DROP database IF EXISTS mis_familiares;