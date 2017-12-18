USE dba01;

-- A
SELECT vorname, name FROM t_ma_dt LIMIT 15;

-- B
SELECT vorname, name, plz, ort FROM t_ma_dt LIMIT 15;

-- C
SELECT vorname AS familiennamen, name AS vorname, plz AS postleitzahl, ort AS wohnort FROM t_ma_dt LIMIT 15;

-- D
SELECT vorname AS familiennamen, name AS vorname, plz AS postleitzahl, ort AS wohnort 
FROM t_ma_dt 
WHERE ort IN ("Frankfurt", "Offenbach") AND `alter` > 30
LIMIT 15;

-- E
SELECT vorname AS familiennamen, name AS vorname, plz AS postleitzahl, ort AS wohnort 
FROM t_ma_dt 
WHERE ort IN ("Frankfurt", "Offenbach") AND `alter` > 30
ORDER BY familiennamen
LIMIT 15;