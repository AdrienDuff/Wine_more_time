DROP TABLE IF EXISTS vin;
CREATE TABLE vin (
	id_vin SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	nom_vin VARCHAR(500) NOT NULL,
	app VARCHAR(100) NOT NULL,
	couleur VARCHAR(100) NOT NULL,
	type_app VARCHAR(100) NOT NULL,
	date INTEGER NOT NULL,
	vol FLOAT NOT NULL,
	PRIMARY KEY (id_vin)
)
ENGINE=INNODB;
LOAD DATA LOCAL INFILE 'C:/USERS/benjamin/Desktop/GM/GM4/BD/vin.csv'
INTO TABLE vin
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(nom_vin,app,couleur,type_app,date,vol);