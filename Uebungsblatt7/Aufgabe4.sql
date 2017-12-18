USE dba01;

-- A
DROP VIEW IF EXISTS v_ma_frankfurt;
CREATE VIEW v_ma_frankfurt AS
	SELECT name, vorname, strasse, ort, plz 
	FROM t_ma_dt 
	WHERE ort = "Frankfurt";

-- B
SELECT * FROM v_ma_frankfurt
ORDER BY name, vorname;

SELECT * FROM v_ma_frankfurt
ORDER BY plz;

-- C
DROP VIEW v_ma_frankfurt;

-- D
CREATE VIEW v_ma_frankfurt AS
	SELECT name, vorname, strasse, ort, plz 
	FROM t_ma_dt 
	WHERE ort = "Frankfurt"
WITH CHECK OPTION;

-- E
/*
INSERT INTO v_ma_frankfurt 
	(vorname, name, strasse, plz, ort) 
	VALUES
	("Helene", "Weigelt", "Südstr. 6a", "60535", "Frankfurt");
*/
/*
UPDATE  v_ma_frankfurt
SET ort = "Berlin"
WHERE vorname = "Helene" AND name = "Weigelt" AND strasse = "Südstr. 6a" AND plz = "60535" AND ort = "Frankfurt";



*/