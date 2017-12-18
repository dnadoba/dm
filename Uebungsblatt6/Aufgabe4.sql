USE dba01;

-- A
ALTER TABLE t_buecher
	ADD INDEX (autor);

-- B
ALTER TABLE t_buecher
	ADD INDEX (titel);

-- C

SELECT * FROM t_buecher 
WHERE autor = "Gerd Baumann";

SELECT * FROM t_buecher
WHERE title = "Der Baum ";

-- D
ALTER TABLE t_verleih
	ADD INDEX (isbn, leser);

-- D
SELECT titel, vname, name 
FROM t_verleih
JOIN t_buecher ON t_buecher.isbn = t_verleih.isbn
JOIN t_leser ON t_leser.nr = t_verleih.leser
WHERE t_verleih.isbn = "1-234-56789-0" AND  t_verleih.leser = 1;

-- E
ALTER TABLE t_leser
	ADD INDEX (name DESC);

-- G
SELECT DISTINCT
table_name,
index_name
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'dba01';

-- H
ALTER TABLE t_leser
	DROP INDEX name;
	