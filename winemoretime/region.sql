DROP TABLE IF EXISTS region;
CREATE TABLE region (
	id_reg SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	nom_reg VARCHAR(100) NOT NULL,
	pays VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_reg)
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/USERS/benjamin/Desktop/GM/GM4/BD/region.csv'
INTO TABLE region
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(nom_reg,pays);