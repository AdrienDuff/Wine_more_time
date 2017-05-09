DROP TABLE IF EXISTS app_mill;
CREATE TABLE app_mill (
	appellation VARCHAR(100) NOT NULL,
	millesime SMALLINT UNSIGNED NOT NULL,
	prix SMALLINT UNSIGNED NOT NULL,
	type_app VARCHAR(100) NOT NULL
)
ENGINE=INNODB;
LOAD DATA LOCAl INFILE 'C:/USERS/benjamin/Desktop/GM/GM4/BD/app_millesime.csv'
INTO TABLE app_mill
FIELDS TERMINATED BY ';' ENCLOSED by '"'
LINES TERMINATED BY '\r\n'
(appellation,millesime,prix,type_app);