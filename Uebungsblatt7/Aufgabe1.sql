USE dba01;
-- A
SELECT (SELECT COUNT(*) FROM t_buecher) AS buecher_anzahl, (SELECT COUNT(*) FROM t_leser) AS leser_anzahl;

-- B
SELECT nr as leser_nr, COUNT(leser) AS buecher_anzal 
FROM t_leser
JOIN t_verleih ON leser = nr
GROUP BY nr;

-- D
SELECT nr as leser_nr, COUNT(leser) AS buecher_anzal 
FROM t_leser
JOIN t_verleih ON leser = nr
GROUP BY nr
ORDER BY nr DESC;

-- D
SELECT nr as leser_nr, COUNT(leser) AS buecher_anzal 
FROM t_leser
JOIN t_verleih ON leser = nr
GROUP BY nr HAVING buecher_anzal > 1
ORDER BY nr DESC;

-- E
SELECT name, LENGTH(name) AS buchstaben_anzahl FROM t_leser;

-- F
SELECT isbn, CEIL(preis) as preis_aufgerundet FROM t_buecher;
