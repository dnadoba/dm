DROP DATABASE IF EXISTS k_land;
CREATE DATABASE k_land;
USE k_land;

-- Themengebiet
CREATE TABLE themengebiet (
	ThemengebietId INTEGER NOT NULL AUTO_INCREMENT,
	Themengebietname VARCHAR(100) NOT NULL,
	PRIMARY KEY (ThemengebietId)
);

-- Medium
CREATE TABLE medium (
	MediumId INTEGER NOT NULL AUTO_INCREMENT,
	MediumName VARCHAR(100) NOT NULL,
	PRIMARY KEY (Mediumid)
);

-- Nationalitaet
CREATE TABLE nationalitaet (
	NationalitaetId INTEGER NOT NULL AUTO_INCREMENT,
	NationalitaetName VARCHAR(100) NOT NULL,
	StaatName VARCHAR(100) NOT NULL,
	PRIMARY KEY (NationalitaetId),
	UNIQUE (NationalitaetName, StaatName)
);

-- Author
CREATE TABLE author (
	AuthorId INTEGER NOT NULL AUTO_INCREMENT,
	AuthorName VARCHAR(100) NOT NULL,
	AuthorVorname VARCHAR(100) NOT NULL,
	AuthorGeburstdatum DATE NOT NULL,
	AuthorTitel VARCHAR(100) NOT NULL,
	AuthroBeschaeftigung VARCHAR(100) NOT NULL,
	NationalitaetId INTEGER NOT NULL,
	PRIMARY KEY (AuthorId)
);

-- Dokument
CREATE TABLE dokument (
	DokumentId INTEGER NOT NULL AUTO_INCREMENT,
	DokumentTitel VARCHAR(100) NOT NULL,
	ThemengebietId INTEGER NOT NULL,
	AuthorId INTEGER NOT NULL,
	PRIMARY KEY (DokumentId)
);

CREATE TABLE liegt_auf (
	DokumentId INTEGER NOT NULL,
	MediumId INTEGER NOT NULL,
	url VARCHAR(2048) NOT NULL,
	PRIMARY KEY (DokumentId, MediumId)
);

ALTER TABLE dokument
	ADD FOREIGN KEY fk_dokument_veroeffentlich_von_author (AuthorId) REFERENCES author(AuthorId)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT,
	ADD FOREIGN KEY fk_dokument_gehoert_zu_themengebiert (ThemengebietId) REFERENCES themengebiet(ThemengebietId)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE liegt_auf
	ADD FOREIGN KEY fk_dokument_liegt_auf (DokumentId) REFERENCES dokument (DokumentId)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT,
	ADD FOREIGN KEY fk_liegt_auf_medium (MediumId) REFERENCES medium (MediumId)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

ALTER TABLE author
	ADD FOREIGN KEY fk_author_kommt_aus_nationalitaet (NationalitaetId) REFERENCES nationalitaet (NationalitaetId)
	ON DELETE RESTRICT
	ON UPDATE RESTRICT;

