DROP TABLE IF EXISTS cepage;
CREATE TABLE cepage (
	id_cepage SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	nom_cepage VARCHAR(100) NOT NULL,
	couleur_cepage VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_cepage)
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/MAMP/htdocs/winemoretime/cepage.csv'
INTO TABLE cepage
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(nom_cepage,couleur_cepage);