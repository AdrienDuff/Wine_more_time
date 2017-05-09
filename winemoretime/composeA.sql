DROP TABLE IF EXISTS app_cepage;
DROP TABLE IF EXISTS composeA1;
DROP TABLE IF EXISTS composeA;
CREATE TABLE app_cepage (
	cepage VARCHAR(100) NOT NULL,
	appellation VARCHAR(100) NOT NULL
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/USERS/benjamin/Desktop/GM/GM4/BD/cepage_app.csv'
INTO TABLE app_cepage
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(cepage,appellation);
CREATE TABLE composeA1 (
	id_cepage SMALLINT UNSIGNED NOT NULL,
	appellation VARCHAR(100) NOT NULL
)
ENGINE=INNODB;
INSERT INTO composeA1 SELECT
	id_cepage,
	appellation
FROM cepage
JOIN app_cepage ON app_cepage.cepage = cepage.nom_cepage;
CREATE TABLE composeA (
	id_cepage SMALLINT UNSIGNED NOT NULL,
	id_app SMALLINT UNSIGNED NOT NULL,
	PRIMARY KEY (id_cepage,id_app)
)
ENGINE=INNODB;
INSERT INTO composeA SELECT
	id_cepage,
	id_app
FROM composeA1
JOIN appellation ON composeA1.appellation = appellation.nom_app;
