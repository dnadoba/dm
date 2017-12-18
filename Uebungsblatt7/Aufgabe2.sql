USE dba01;

-- A
DROP TABLE IF EXISTS t_mess;
CREATE TABLE t_mess (
	nr INTEGER NOT NULL AUTO_INCREMENT,
	wert INTEGER NOT NULL,
	PRIMARY KEY (nr)
);

-- B
INSERT INTO t_mess (wert) VALUES
	(765),
	(312),
	(2),
	(231),
	(321),
	(123),
	(987),
	(999),
	(54),
	(7),
	(892),
	(345);

-- C
SELECT ROUND(SUM(wert)/COUNT(*)), MIN(wert), MAX(wert) FROM t_mess;
