USE dba01;

-- A
SELECT vname, name, isbn 
FROM t_leser, t_verleih
WHERE nr = leser;

-- B
SELECT vname, name, isbn 
FROM t_leser, t_verleih
WHERE nr = leser
ORDER BY name, vname;

-- C
SELECT vname, name, isbn 
FROM t_leser
JOIN t_verleih ON leser = nr
ORDER BY name, vname;

-- D
SELECT vname, name, t_buecher.isbn, titel
FROM t_leser
JOIN t_verleih ON leser = nr
JOIN t_buecher ON t_buecher.isbn = t_verleih.isbn
ORDER BY name, vname;
