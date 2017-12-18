USE dba01;

-- A
SELECT *,  (preis * 1.16) AS brutto_preis FROM t_lager;

-- B
SELECT stueckzahl, COUNT(stueckzahl) FROM t_lager GROUP BY stueckzahl;

-- C
SELECT stueckzahl, COUNT(stueckzahl) FROM t_lager WHERE stueckzahl < 100 GROUP BY stueckzahl;

-- D
SELECT stueckzahl, COUNT(stueckzahl) FROM t_lager WHERE stueckzahl < 100 GROUP BY stueckzahl ORDER BY  stueckzahl DESC;