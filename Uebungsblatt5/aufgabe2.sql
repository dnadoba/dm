CREATE DATABASE dba01;
USE dba01;
CREATE TABLE t_person (
	id integer NOT NULL,
    vorname varchar(100) NOT NULL,
    nachname varchar(100) NOT NULL
);
ALTER TABLE t_person 
	ADD COLUMN lebenslauf BLOB;
ALTER TABLE t_person
	MODIFY lebenslauf BLOB NOT NULL;
ALTER TABLE t_person
	ADD COLUMN beschaeftigt_seit DATE NOT NULL;
ALTER TABLE t_person
	DROP COLUMN beschaeftigt_seit;
DROP TABLE t_person;