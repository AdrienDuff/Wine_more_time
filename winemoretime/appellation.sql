DROP TABLE IF EXISTS appellation;
DROP TABLE IF EXISTS appellation1;
CREATE TABLE appellation1 (
	id_app SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	nom_app VARCHAR(100) NOT NULL,
	type_app VARCHAR(100) NOT NULL,
	region_app VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_app)
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/USERS/benjamin/Desktop/GM/GM4/BD/appellation.csv'
INTO TABLE appellation1
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(nom_app,type_app,region_app);
CREATE TABLE appellation (
	id_app SMALLINT UNSIGNED NOT NULL,
	id_reg SMALLINT UNSIGNED NOT NULL,
	nom_app VARCHAR(100) NOT NULL,
	type_app VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_app)
)
ENGINE=INNODB;
INSERT INTO appellation SELECT
	id_app,
	id_reg,
	nom_app,
	type_app
FROM appellation1 
JOIN region ON appellation1.region_app = region.nom_reg;
	