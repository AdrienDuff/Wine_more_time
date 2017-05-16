DROP TABLE IF EXISTS repas;
CREATE TABLE repas (
	id_repas SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	type_repas VARCHAR(100) NOT NULL,
	nom_repas VARCHAR(100) NOT NULL,
	couleur VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_repas)
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/MAMP/htdocs/winemoretime/repas_vin.csv'
INTO TABLE repas
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(type_repas,nom_repas,couleur);