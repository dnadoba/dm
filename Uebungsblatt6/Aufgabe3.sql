USE dba01;

-- A
CREATE TABLE t_buecher (
	isbn CHAR(13),
	titel VARCHAR(100),
	autor VARCHAR(100),
	auflage INTEGER,
	preis DECIMAL(10, 2),
	PRIMARY KEY (isbn)
);

-- B
CREATE TABLE t_leser (
	nr INTEGER AUTO_INCREMENT,
	name VARCHAR(100),
	vname VARCHAR(100),
	gebdat DATE,
	adr VARCHAR(255),
	PRIMARY KEY (nr)
);

-- C
CREATE TABLE t_verleih (
	isbn CHAR(13),
	leser INTEGER,
	datum DATE,
	PRIMARY KEY (isbn, leser)
);

ALTER TABLE t_verleih
	ADD FOREIGN KEY fk_verleih_to_buecher (isbn) REFERENCES t_buecher (isbn) 
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
	ADD FOREIGN KEY fk_verleih_to_leser(leser) REFERENCES t_leser (nr) 
	ON DELETE CASCADE
	ON UPDATE CASCADE;

INSERT INTO t_buecher (isbn, titel, autor, auflage, preis)
VALUES ('1-254-56649-0', 'Mein Gartenbuch', 'Bernd Blume', 2, 19.95);
INSERT INTO t_buecher (isbn, titel, autor, auflage, preis)
VALUES ('1-234-56789-0', 'Der Baum', 'Gerd Baumann', 1, 29.95);
INSERT INTO t_buecher (isbn, titel, autor, auflage, preis)
VALUES ('1-285-54709-0', 'Fit for Fun', 'Brigitte Schöne', 3, 21.55);
INSERT INTO t_leser (name, vname, gebdat, adr)
VALUES ('Haeusler', 'Bernd', '1987-04-17', 'Waldweg 4, 02749 Hainig');
INSERT INTO t_leser (name, vname, gebdat, adr)
VALUES ('Kramer', 'Birgit', '1966-12-23', 'Steinstr. 4, 02749 Hainig');
INSERT INTO t_verleih (isbn, leser, datum) VALUES ('1-254-56649-0', 1, '2001-11-25');
INSERT INTO t_verleih (isbn, leser, datum) VALUES ('1-234-56789-0', 1, '2001-11-25');
INSERT INTO t_verleih (isbn, leser, datum) VALUES ('1-285-54709-0', 2, '2001-10-27');
INSERT INTO t_verleih (isbn, leser, datum) VALUES ('1-285-54709-0', 3, '2001-11-29');

