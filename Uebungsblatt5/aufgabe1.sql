CREATE DATABASE IF NOT EXISTS  dba01;
USE dba01;
CREATE TABLE t_artikel (
	id integer,
    name varchar(100),
    preis integer
);
DROP TABLE t_artikel;
DROP DATABASE dba01;