CREATE DATABASE IF NOT EXISTS dba01;
USE dba01;

#A
CREATE TABLE t_lager (
	stueckzahl INTEGER DEFAULT 1,
    preis DECIMAL(10, 2) NOT NULL
 );
 
 #B
 ALTER TABLE t_lager
	ADD COLUMN name varchar(100);
 
 #C
 INSERT INTO t_lager
	(name, stueckzahl, preis)
    VALUES
	("Kugelschreiber", 88, 2.99), 
    ("Ordner", 67, 2.50),
    ("Heftklammern", 423, 0.99),
    ("Bleistift", 88, 0.99),
    ("Umschläge C6",  67, 0.80);
    
#D
INSERT INTO t_lager 
	(name, preis)
    VALUE
    ("Schreibblock A4", 1.99);

#E
SELECT * FROM t_lager WHERE name = "Schreibblock A4";

#F
SELECT * FROM t_lager
	WHERE name = "Bleistift";
    
UPDATE t_lager 
	SET stueckzahl = stueckzahl + 100 
    WHERE name = "Bleistift";
    
#G
SELECT * FROM t_lager
	WHERE name = "Ordner";
UPDATE t_lager
	SET preis = preis + 0.30
    WHERE name = "Ordner";

#H
SELECT * FROM t_lager
	WHERE name = "Schreibblock A4";
DELETE FROM t_lager
	WHERE name = "Schreibblock A4";
    








