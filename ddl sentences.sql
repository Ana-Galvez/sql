-- DATA DEFINITION LANGUAGE DDL

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


-- DATA MANIPULATION LANGUAGE DML

INSERT INTO mis_otros_familiares ( nombre,apellido,estatura,fecha_de_nacimiento ) VALUES
    ( "ana","galvez",1.52,"1982-02-13"),
    ("diana","britez",1.60,"1976-05-07");

INSERT INTO mis_otros_familiares SET nombre="ana", apellido="galvez", estatura=1.52, fecha_de_nacimiento="1982-02-13";

SELECT * FROM mis_otros_familiares;
SELECT nombre,apellido FROM mis_otros_familiares;
SELECT COUNT(*) FROM mis_otros_familiares;
SELECT COUNT(*) AS total_familiares FROM mis_otros_familiares;
SELECT * FROM mis_otros_familiares WHERE nombre="ana";
SELECT * FROM mis_otros_familiares WHERE nombre IN ("ana","juan","jorge");
SELECT * FROM mis_otros_familiares WHERE nombre LIKE 'a%'; que comience con a
SELECT * FROM mis_otros_familiares WHERE nombre LIKE '%o'; que termine con o
SELECT * FROM mis_otros_familiares WHERE apellido LIKE '%l%'; que contenga l
SELECT * FROM mis_otros_familiares WHERE nombre NOT LIKE 'a%'; que no comience con a
SELECT * FROM mis_otros_familiares WHERE nombre NOT LIKE '%o'; que no termine con o
SELECT * FROM mis_otros_familiares WHERE apellido NOT LIKE '%l%'; que no contenga l
SELECT * FROM mis_otros_familiares WHERE precio BETWEEN 5000 AND 15000;  entre 5000 y 15000 incluido

operadores relacionales
!= o <> distinto    >   <   <= >=   = 

operadores lógicos
SELECT * FROM tabla WHERE NOT columna="valor"
SELECT * FROM mis_otros_familiares WHERE nombre LIKE 'a%' AND apellido LIKE "%z"; que nombre comience con a Y que apellido termine con z
SELECT * FROM mis_otros_familiares WHERE nombre LIKE 'a%' OR apellido LIKE "%z"; que nombre comience con a y además los otros registros donde apellido termine con z

UPDATE tabla SET columna1=valor, columna2=valor WHERE columna=valor;

DELETE FROM tabla WHERE columna=valor

TRUNCATE TABLE tabla   sirve si hubo filas borradas donde hay un campo auto_increment y resetea a 1.

operaciones matematicas  +  -  /  *
funciones matematicas comunes   MOD   CEILING  FLOOR  ROUND  POWER SQRT
funciones de agrupamiento  MIN  MAX  SUM   AVG

select columna, count(*) as cantidad_columna from tabla GROUP BY columna;

select columna, count(*) as cantidad_columna from tabla where columna u otra columna condicion "valor" GROUP BY columna 
select columna, count(*) as cantidad_columna from tabla where columna u otra columna condicion "valor" GROUP BY columna having cantidad_columna condicion;

WHERE: se usa antes del group by y order by y con columnas creadas en la tabla
HAVING: se usa despues del group by y order by y con columnas creadas con as o columnas de la tabla

select distinct columna from tabla    distinct  elimina datos duplicados

select * from tabla where(si hay) order by columna asc(default) o DESC
select * from tabla where(si hay) group by columna having(si hay) order by columna1,columna2 asc(default) o DESC

order by: va a lo ultimo

funciones de texto
lower lcase  upper ucase  initcap   chr(n°) devuelva la letra del n° ascii  ascii(letra)
substr(text,inicio,fin)  left(texto,cantidad caracteres)  right(texto,cantidad caracteres)  lenght(texto)
trim  ltrim rtrim (texto)  saca los espacios antes o después
concat(texto1,texto2,etc)  concat_ws(simbolo,texto1,texto2,etc)
repeat(texto,cantidad de repeticiones)  replace(texto,lo nuevo,lo viejo)  revert(texto)

Índices: son campos que hacen referencia a otro campo de una tabla para acceder más rápidamente cuando se hacen las consultas.
1) primary keys
2) UNIQUE
3) creado por alguien
4) inice fulltext  tardan más las consultas