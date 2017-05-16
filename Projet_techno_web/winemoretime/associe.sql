DROP TABLE IF EXISTS associe;
CREATE TABLE associe (
	id_repas SMALLINT UNSIGNED NOT NULL ,
	id_vin SMALLINT UNSIGNED NOT NULL ,
	PRIMARY KEY (id_repas,id_vin)
)
ENGINE=INNODB;
INSERT INTO associe SELECT
	id_repas,
	id_vin
FROM repas
JOIN vin ON repas.couleur = vin.couleur;