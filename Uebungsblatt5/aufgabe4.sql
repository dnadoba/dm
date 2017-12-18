CREATE DATABASE IF NOT EXISTS dba01;
USE dba01;

#A
CREATE TABLE t_ma_dt (
	name varchar(100),
    vorname varchar(100),
    strasse varchar(100),
    ort varchar(100),
    plz char(10),
    `alter` integer
);

#B
INSERT INTO t_ma_dt 
	(name, vorname, strasse, ort, plz, `alter`)
    VALUES
    ("Haas", "Elsbeth", "Berliner Str. 223", "Offenbach", "63067", "42"),
	("Richter", "Hans", "Frankfurter Str. 61", "Offenbach", "63067", "32"),
	("Friedrich", "Irmgard", "Goethestr. 61", "Offenbach", "63067", "40"),
	("Hartmann", "Jochen", "Berliner Str. 223", "Frankfurt", "60528", "29"),
	("Goldbach", "Martin", "Frankfurter Str. 61", "Frankfurt", "60529", "35"),
	("Naumann", "Norbert", "Goethestr. 61", "Frankfurt", "60594", "38"),
	("Haas", "Tanja", "Berliner Str. 223", "Hannover", "30323", "36"),
	("Neppe", "Martin", "Goethestr. 61", "Hannover", "30324", "43");
    
#C
CREATE TABLE t_ma_frankfurt (
	name varchar(100),
    vorname varchar(100),
    strasse varchar(100),
    ort varchar(100),
    plz char(10),
    `alter` integer
);

INSERT INTO t_ma_frankfurt
	(name, vorname, strasse, ort, plz, `alter`)
    SELECT name, vorname, strasse, ort, plz, `alter` 
    FROM t_ma_dt
	WHERE ort in ("Frankfurt", "Offenbach");

#D
SELECT * FROM t_ma_frankfurt;

#E
SELECT * FROM t_ma_frankfurt
	WHERE ort = "Frankfurt";
UPDATE t_ma_frankfurt
	SET ort = "Frankfurt/Main"
    WHERE ort = "Frankfurt";