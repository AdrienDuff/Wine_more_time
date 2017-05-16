DROP TABLE IF EXISTS volumetrie;
CREATE TABLE volumetrie (
	id_vol SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	volume FLOAT NOT NULL,
	nom_vol VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_vol)
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/MAMP/htdocs/winemoretime/volumetrie.csv'
INTO TABLE volumetrie
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(volume,nom_vol);