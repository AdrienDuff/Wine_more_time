-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: gm6    Database: adufraux
-- ------------------------------------------------------
-- Server version	5.0.67-0ubuntu6.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `app_cepage`
--

DROP TABLE IF EXISTS `app_cepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_cepage` (
  `cepage` varchar(100) NOT NULL,
  `appellation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cepage`
--

LOCK TABLES `app_cepage` WRITE;
/*!40000 ALTER TABLE `app_cepage` DISABLE KEYS */;
INSERT INTO `app_cepage` VALUES ('Cabernet franc','Anjou'),('Cabernet franc','Saumur'),('Cabernet franc','Chinon'),('Cabernet franc','Bourgueil'),('Cabernet franc','Beaujolais'),('Cabernet sauvignon','Pomerol'),('Cabernet sauvignon','Saint-Emilion'),('Cabernet sauvignon','Saint-Emilion grand cru'),('Chardonnay','Chablis'),('Chardonnay','Chablis Grand Cru'),('Chardonnay','Macon'),('Chardonnay','Champagne'),('Chardonnay','Cremant de Loire'),('Chardonnay','Corton-Charlemagne'),('Chardonnay','Saumur'),('Chenin','Anjou'),('Chenin','Cabernet d\'Anjou'),('Chenin','Saumur'),('Gamay','Beaujolais'),('Gamay','Anjou'),('Gamay','Haut-Poitou'),('Gamay','Aloxe-Corton'),('Grenache noir','Chateau Neuf du Pape'),('Gros manseng','Jurancon'),('Merlot','Fronsac'),('Merlot','Pomerol'),('Merlot','Saint-Emilion'),('Merlot','Saussignac'),('Merlot','Madiran'),('Merlot','Margaux'),('Pinot noir','Bourgogne'),('Pinot noir','Chablis'),('Pinot noir','Mercurey'),('Pinot noir','Coteaux Champenois'),('Pinot noir','Sancerre'),('Sauvignon','Graves'),('Sauvignon','Graves superieures'),('Sauvignon','Sancerre'),('Sauvignon','Yonne'),('Syrah','Hermitage'),('Syrah','Cornas'),('Syrah','Puy-de-Dome'),('Syrah','Collioure'),('Gewurztraminer','Alsace'),('Sciaccarello','Ajaccio'),('Sciaccarello','Sartene'),('Sciaccarello','Figari'),('Sciaccarello','Calvi'),('Poulsard','Perigord'),('Poulsard','Atlantique'),('Poulsard','Arbois'),('Grenache blanc','Cotes du Rhone'),('Grenache blanc','Collioure'),('Grenache blanc','Banyuls'),('Grenache blanc','Alpilles'),('Len de l\'el','Gaillac'),('Len de l\'el','Atlantique'),('Len de l\'el','Perigord'),('Len de l\'el','Gers'),('Tibouren','Atlantique'),('Tibouren','Perigord'),('Tibouren','Cotes de Provence'),('Trousseau','Cotes du Jura'),('Trousseau','Perigord'),('Trousseau','Arbois'),('Trousseau','Atlantique');
/*!40000 ALTER TABLE `app_cepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_mill`
--

DROP TABLE IF EXISTS `app_mill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_mill` (
  `appellation` varchar(100) NOT NULL,
  `millesime` smallint(5) unsigned NOT NULL,
  `prix` smallint(5) unsigned NOT NULL,
  `type_app` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_mill`
--

LOCK TABLES `app_mill` WRITE;
/*!40000 ALTER TABLE `app_mill` DISABLE KEYS */;
INSERT INTO `app_mill` VALUES ('Alsace grand cru',2010,30,'AOC-AOP'),('Alsace grand cru',2011,20,'AOC-AOP'),('Alsace grand cru',2012,30,'AOC-AOP'),('Alsace grand cru',2013,20,'AOC-AOP'),('Cremant d\'Alsace',2010,30,'AOC-AOP'),('Cremant d\'Alsace',2011,20,'AOC-AOP'),('Cremant d\'Alsace',2012,40,'AOC-AOP'),('Cremant d\'Alsace',2013,20,'AOC-AOP'),('Beaujolais',2010,40,'AOC-AOP'),('Beaujolais',2011,40,'AOC-AOP'),('Beaujolais',2012,30,'AOC-AOP'),('Beaujolais',2013,20,'AOC-AOP'),('Beaujolais Villages',2010,40,'AOC-AOP'),('Beaujolais Villages',2011,40,'AOC-AOP'),('Beaujolais Villages',2012,30,'AOC-AOP'),('Beaujolais Villages',2013,20,'AOC-AOP'),('Brouilly',2010,70,'AOC-AOP'),('Brouilly',2011,200,'AOC-AOP'),('Brouilly',2012,30,'AOC-AOP'),('Brouilly',2013,15,'AOC-AOP'),('Chenas',2013,5,'AOC-AOP'),('Chiroubles',2010,70,'AOC-AOP'),('Chiroubles',2011,200,'AOC-AOP'),('Chiroubles',2012,30,'AOC-AOP'),('Chiroubles',2013,20,'AOC-AOP'),('Cote de Brouilly',2013,5,'AOC-AOP'),('Fleurie',2010,50,'AOC-AOP'),('Fleurie',2011,150,'AOC-AOP'),('Fleurie',2012,30,'AOC-AOP'),('Fleurie',2013,15,'AOC-AOP'),('Julienas',2013,5,'AOC-AOP'),('Morgon',2010,70,'AOC-AOP'),('Morgon',2011,100,'AOC-AOP'),('Morgon',2012,30,'AOC-AOP'),('Morgon',2013,20,'AOC-AOP'),('Moulin-a-Vent',2010,70,'AOC-AOP'),('Moulin-a-Vent',2011,150,'AOC-AOP'),('Moulin-a-Vent',2012,30,'AOC-AOP'),('Moulin-a-Vent',2013,20,'AOC-AOP'),('Regnie',2013,5,'AOC-AOP'),('Saint-Amour',2010,50,'AOC-AOP'),('Saint-Amour',2011,200,'AOC-AOP'),('Saint-Amour',2012,30,'AOC-AOP'),('Saint-Amour',2013,15,'AOC-AOP'),('Comtes Rhodaniens',2013,5,'IGP'),('Saone-et-Loire',2013,5,'IGP'),('Cotes de Bordeaux',2013,5,'AOC-AOP'),('Barsac',2010,70,'AOC-AOP'),('Barsac',2011,20,'AOC-AOP'),('Barsac',2012,10,'AOC-AOP'),('Barsac',2013,20,'AOC-AOP'),('Blaye',2013,5,'AOC-AOP'),('Bordeaux',2010,50,'AOC-AOP'),('Bordeaux',2011,30,'AOC-AOP'),('Bordeaux',2012,20,'AOC-AOP'),('Bordeaux',2013,20,'AOC-AOP'),('Bordeaux superieur',2010,40,'AOC-AOP'),('Bordeaux superieur',2011,30,'AOC-AOP'),('Bordeaux superieur',2012,15,'AOC-AOP'),('Bordeaux superieur',2013,20,'AOC-AOP'),('Cadillac',2013,5,'AOC-AOP'),('Canon Fronsac',2013,5,'AOC-AOP'),('Cerons',2013,5,'AOC-AOP'),('Cotes de Blaye',2013,5,'AOC-AOP'),('Cotes de Bordeaux-Saint-Macaire',2013,5,'AOC-AOP'),('Cotes de Bourg, Bourg et Bourgeais',2013,5,'AOC-AOP'),('Cremant de Bordeaux',2013,5,'AOC-AOP'),('Entre-deux-Mers',2013,5,'AOC-AOP'),('Fronsac',2010,40,'AOC-AOP'),('Fronsac',2011,20,'AOC-AOP'),('Fronsac',2012,20,'AOC-AOP'),('Fronsac',2013,15,'AOC-AOP'),('Graves',2010,40,'AOC-AOP'),('Graves',2011,30,'AOC-AOP'),('Graves',2012,20,'AOC-AOP'),('Graves',2013,20,'AOC-AOP'),('Graves de Vayres',2013,5,'AOC-AOP'),('Graves superieures',2013,5,'AOC-AOP'),('Haut-Medoc',2010,40,'AOC-AOP'),('Haut-Medoc',2011,20,'AOC-AOP'),('Haut-Medoc',2012,20,'AOC-AOP'),('Haut-Medoc',2013,15,'AOC-AOP'),('Lalande-de-Pomerol',2010,40,'AOC-AOP'),('Lalande-de-Pomerol',2011,30,'AOC-AOP'),('Lalande-de-Pomerol',2012,20,'AOC-AOP'),('Lalande-de-Pomerol',2013,15,'AOC-AOP'),('Listrac-Medoc',2013,5,'AOC-AOP'),('Loupiac',2013,5,'AOC-AOP'),('Lussac-Saint-Emilion',2013,5,'AOC-AOP'),('Margaux',2010,40,'AOC-AOP'),('Margaux',2011,30,'AOC-AOP'),('Margaux',2012,20,'AOC-AOP'),('Margaux',2013,15,'AOC-AOP'),('Medoc',2010,40,'AOC-AOP'),('Medoc',2011,30,'AOC-AOP'),('Medoc',2012,15,'AOC-AOP'),('Medoc',2013,15,'AOC-AOP'),('Montagne-Saint-Emilion',2013,5,'AOC-AOP'),('Moulis',2013,5,'AOC-AOP'),('Neac',2013,5,'AOC-AOP'),('Pauillac',2010,40,'AOC-AOP'),('Pauillac',2011,20,'AOC-AOP'),('Pauillac',2012,20,'AOC-AOP'),('Pauillac',2013,15,'AOC-AOP'),('Pessac-Leognan',2010,40,'AOC-AOP'),('Pessac-Leognan',2011,30,'AOC-AOP'),('Pessac-Leognan',2012,20,'AOC-AOP'),('Pessac-Leognan',2013,20,'AOC-AOP'),('Pomerol',2010,40,'AOC-AOP'),('Pomerol',2011,30,'AOC-AOP'),('Pomerol',2012,20,'AOC-AOP'),('Pomerol',2013,15,'AOC-AOP'),('Premieres Cotes de Bordeaux',2013,5,'AOC-AOP'),('Puisseguin-Saint-Emilion',2013,5,'AOC-AOP'),('Saint-Emilion',2010,40,'AOC-AOP'),('Saint-Emilion',2011,20,'AOC-AOP'),('Saint-Emilion',2012,15,'AOC-AOP'),('Saint-Emilion',2013,15,'AOC-AOP'),('Saint-Emilion grand cru',2010,40,'AOC-AOP'),('Saint-Emilion grand cru',2011,30,'AOC-AOP'),('Saint-Emilion grand cru',2012,20,'AOC-AOP'),('Saint-Emilion grand cru',2013,20,'AOC-AOP'),('Saint-Estephe',2010,40,'AOC-AOP'),('Saint-Estephe',2011,20,'AOC-AOP'),('Saint-Estephe',2012,20,'AOC-AOP'),('Saint-Estephe',2013,15,'AOC-AOP'),('Saint-Georges-Saint-Emilion',2013,5,'AOC-AOP'),('Saint-Julien',2010,40,'AOC-AOP'),('Saint-Julien',2011,20,'AOC-AOP'),('Saint-Julien',2012,20,'AOC-AOP'),('Saint-Julien',2013,15,'AOC-AOP'),('Sainte-Croix-du-Mont',2010,70,'AOC-AOP'),('Sainte-Croix-du-Mont',2011,20,'AOC-AOP'),('Sainte-Croix-du-Mont',2012,15,'AOC-AOP'),('Sainte-Croix-du-Mont',2013,20,'AOC-AOP'),('Sainte-Foy-Bordeaux',2013,5,'AOC-AOP'),('Sauternes',2010,70,'AOC-AOP'),('Sauternes',2011,30,'AOC-AOP'),('Sauternes',2012,15,'AOC-AOP'),('Sauternes',2013,20,'AOC-AOP'),('Atlantique',2013,5,'IGP'),('Perigord',2013,5,'IGP'),('Aloxe-Corton',2010,40,'IGP'),('Aloxe-Corton',2011,30,'AOC-AOP'),('Aloxe-Corton',2012,30,'AOC-AOP'),('Aloxe-Corton',2013,20,'AOC-AOP'),('Auxey-Duresses',2013,5,'AOC-AOP'),('Batard-Montrachet',2013,5,'AOC-AOP'),('Beaune',2010,40,'AOC-AOP'),('Beaune',2011,30,'AOC-AOP'),('Beaune',2012,40,'AOC-AOP'),('Beaune',2013,20,'AOC-AOP'),('Bienvenues-Batard-Montrachet',2013,5,'AOC-AOP'),('Blagny',2013,5,'AOC-AOP'),('Bonnes-Mares',2013,5,'AOC-AOP'),('Bourgogne',2010,40,'AOC-AOP'),('Bourgogne',2011,30,'AOC-AOP'),('Bourgogne',2012,30,'AOC-AOP'),('Bourgogne',2013,20,'AOC-AOP'),('Bourgogne aligote',2013,5,'AOC-AOP'),('Bourgogne mousseux',2013,5,'AOC-AOP'),('Bourgogne Passe-tout-grains',2013,5,'AOC-AOP'),('Bouzeron',2013,5,'AOC-AOP'),('Chablis',2010,50,'AOC-AOP'),('Chablis',2011,30,'AOC-AOP'),('Chablis',2012,40,'AOC-AOP'),('Chablis',2013,30,'AOC-AOP'),('Chablis Grand Cru',2010,50,'AOC-AOP'),('Chablis Grand Cru',2011,30,'AOC-AOP'),('Chablis Grand Cru',2012,40,'AOC-AOP'),('Chablis Grand Cru',2013,30,'AOC-AOP'),('Chambertin',2010,30,'AOC-AOP'),('Chambertin',2011,20,'AOC-AOP'),('Chambertin',2012,20,'AOC-AOP'),('Chambertin',2013,30,'AOC-AOP'),('Chambertin-Clos de Beze',2013,5,'AOC-AOP'),('Chambolle-Musigny',2010,30,'AOC-AOP'),('Chambolle-Musigny',2011,30,'AOC-AOP'),('Chambolle-Musigny',2012,40,'AOC-AOP'),('Chambolle-Musigny',2013,20,'AOC-AOP'),('Chapelle-Chambertin',2013,5,'AOC-AOP'),('Charlemagne',2010,50,'AOC-AOP'),('Charlemagne',2011,20,'AOC-AOP'),('Charlemagne',2012,40,'AOC-AOP'),('Charlemagne',2013,30,'AOC-AOP'),('Corton-Charlemagne',2010,50,'IGP'),('Corton-Charlemagne',2011,20,'IGP'),('Corton-Charlemagne',2012,30,'IGP'),('Corton-Charlemagne',2013,30,'AOC-AOP'),('Coteaux Bourguignons',2013,5,'AOC-AOP'),('Cremant de Bourgogne',2013,5,'AOC-AOP'),('Macon',2010,40,'AOC-AOP'),('Macon',2011,30,'AOC-AOP'),('Macon',2012,30,'AOC-AOP'),('Macon',2013,20,'AOC-AOP'),('Mercurey',2013,5,'AOC-AOP'),('Meursault',2010,40,'AOC-AOP'),('Meursault',2011,30,'AOC-AOP'),('Meursault',2012,40,'AOC-AOP'),('Meursault',2013,20,'AOC-AOP'),('Montagny',2013,5,'AOC-AOP'),('Monthelie',2013,5,'AOC-AOP'),('Montrachet',2010,50,'AOC-AOP'),('Montrachet',2011,30,'AOC-AOP'),('Montrachet',2012,30,'AOC-AOP'),('Montrachet',2013,15,'AOC-AOP'),('Morey-Saint-Denis',2013,5,'AOC-AOP'),('Musigny',2013,5,'AOC-AOP'),('Nuits-Saint-Georges',2010,40,'AOC-AOP'),('Nuits-Saint-Georges',2011,30,'AOC-AOP'),('Nuits-Saint-Georges',2012,40,'AOC-AOP'),('Nuits-Saint-Georges',2013,20,'AOC-AOP'),('Pernand-Vergelesses',2013,5,'AOC-AOP'),('Petit Chablis',2013,5,'AOC-AOP'),('Pommard',2013,5,'AOC-AOP'),('Rully',2013,5,'AOC-AOP'),('Santenay',2010,40,'AOC-AOP'),('Santenay',2011,30,'AOC-AOP'),('Santenay',2012,40,'AOC-AOP'),('Santenay',2013,20,'AOC-AOP'),('Volnay',2010,30,'IGP'),('Volnay',2011,30,'AOC-AOP'),('Volnay',2012,40,'AOC-AOP'),('Volnay',2013,20,'AOC-AOP'),('Vougeot',2010,40,'AOC-AOP'),('Vougeot',2011,30,'AOC-AOP'),('Vougeot',2012,30,'AOC-AOP'),('Vougeot',2013,20,'AOC-AOP'),('Coteaux de l\'Auxois',2013,5,'IGP'),('Coteaux de Tannay',2013,5,'IGP'),('Sainte-Marie-la-Blanche',2013,5,'IGP'),('Saone-et-Loire',2013,5,'IGP'),('Yonne',2013,5,'IGP'),('Champagne',2010,15,'AOC-AOP'),('Champagne',2011,50,'AOC-AOP'),('Champagne',2012,40,'AOC-AOP'),('Champagne',2013,30,'AOC-AOP'),('Coteaux champenois',2013,5,'AOC-AOP'),('Rose des Riceys',2013,5,'AOC-AOP'),('Coteaux de Coiffy',2013,5,'IGP'),('Haute-Marne',2013,5,''),('Anjou',2010,40,'AOC-AOP'),('Anjou',2011,30,'AOC-AOP'),('Anjou',2012,30,'AOC-AOP'),('Anjou',2013,20,'AOC-AOP'),('Bourgueil',2010,40,'AOC-AOP'),('Bourgueil',2011,30,'AOC-AOP'),('Bourgueil',2012,20,'AOC-AOP'),('Bourgueil',2013,15,'AOC-AOP'),('Cabernet d\'Anjou',2010,40,'AOC-AOP'),('Cabernet d\'Anjou',2011,20,'AOC-AOP'),('Cabernet d\'Anjou',2012,20,'AOC-AOP'),('Cabernet d\'Anjou',2013,15,'AOC-AOP'),('Chinon',2010,40,'AOC-AOP'),('Chinon',2011,30,'AOC-AOP'),('Chinon',2012,30,'AOC-AOP'),('Chinon',2013,20,'AOC-AOP'),('Cremant de Loire',2010,40,'AOC-AOP'),('Cremant de Loire',2011,30,'AOC-AOP'),('Cremant de Loire',2012,20,'AOC-AOP'),('Cremant de Loire',2013,20,'AOC-AOP'),('Haut-Poitou',2013,5,'AOC-AOP'),('Muscadet',2010,30,'AOC-AOP'),('Muscadet',2011,20,'AOC-AOP'),('Muscadet',2012,30,'AOC-AOP'),('Muscadet',2013,20,'AOC-AOP'),('Muscadet Coteaux de la Loire',2013,5,'AOC-AOP'),('Rose d\'Anjou',2010,40,'AOC-AOP'),('Rose d\'Anjou',2011,20,'AOC-AOP'),('Rose d\'Anjou',2012,30,'AOC-AOP'),('Rose d\'Anjou',2013,20,'AOC-AOP'),('Rosé de Loire',2010,40,'AOC-AOP'),('Rosé de Loire',2011,20,'AOC-AOP'),('Rosé de Loire',2012,20,'AOC-AOP'),('Rosé de Loire',2013,20,'AOC-AOP'),('Saint-Nicolas-de-Bourgueil',2010,40,'AOC-AOP'),('Saint-Nicolas-de-Bourgueil',2011,30,'AOC-AOP'),('Saint-Nicolas-de-Bourgueil',2012,20,'AOC-AOP'),('Saint-Nicolas-de-Bourgueil',2013,20,'AOC-AOP'),('Saint-Pourçain',2010,40,'IGP'),('Saint-Pourçain',2011,30,'IGP'),('Saint-Pourçain',2012,20,'AOC-AOP'),('Saint-Pourçain',2013,20,'AOC-AOP'),('Sancerre',2010,40,'AOC-AOP'),('Sancerre',2011,30,'AOC-AOP'),('Sancerre',2012,30,'AOC-AOP'),('Sancerre',2013,20,'AOC-AOP'),('Saumur',2010,40,'AOC-AOP'),('Saumur',2011,30,'AOC-AOP'),('Saumur',2012,30,'AOC-AOP'),('Saumur',2013,20,'AOC-AOP'),('Calvados',2010,40,'IGP'),('Calvados',2011,30,'IGP'),('Calvados',2012,20,'IGP'),('Calvados',2013,15,'IGP'),('Comtes Rhodaniens',2013,5,'IGP'),('Coteaux du Cher et de l\'Arnon',2013,5,'IGP'),('Cotes de la Charité',2013,5,'IGP'),('Haute-Vienne',2013,5,'IGP'),('Puy-de-Dome',2013,5,'IGP'),('Urfe',2013,5,'IGP'),('Val de Loire',2010,40,'IGP'),('Val de Loire',2011,30,'IGP'),('Val de Loire',2012,20,'IGP'),('Val de Loire',2013,20,'IGP'),('Bandol',2010,40,'AOC-AOP'),('Bandol',2011,40,'AOC-AOP'),('Bandol',2012,20,'AOC-AOP'),('Bandol',2013,20,'AOC-AOP'),('Bellet',2010,40,'AOC-AOP'),('Bellet',2011,30,'AOC-AOP'),('Bellet',2012,20,'AOC-AOP'),('Bellet',2013,30,'AOC-AOP'),('Muscat du Cap Corse',2010,50,'AOC-AOP'),('Muscat du Cap Corse',2011,30,'AOC-AOP'),('Muscat du Cap Corse',2012,20,'AOC-AOP'),('Muscat du Cap Corse',2013,30,'AOC-AOP'),('Patrimonio',2010,30,'AOC-AOP'),('Patrimonio',2011,30,'AOC-AOP'),('Patrimonio',2012,20,'AOC-AOP'),('Patrimonio',2013,20,'AOC-AOP'),('Pierrevert',2013,5,'AOC-AOP'),('Vin de Corse',2010,30,'AOC-AOP'),('Vin de Corse',2011,30,'AOC-AOP'),('Vin de Corse',2012,20,'AOC-AOP'),('Vin de Corse',2013,20,'AOC-AOP'),('Cotes de Bergerac',2013,5,'AOC-AOP'),('Gaillac',2010,20,'AOC-AOP'),('Gaillac',2011,40,'AOC-AOP'),('Gaillac',2012,20,'AOC-AOP'),('Gaillac',2013,30,'AOC-AOP'),('Jurançon',2010,20,'AOC-AOP'),('Jurançon',2011,70,'AOC-AOP'),('Jurançon',2012,20,'AOC-AOP'),('Jurançon',2013,40,'AOC-AOP'),('Madiran',2010,20,'AOC-AOP'),('Madiran',2011,40,'AOC-AOP'),('Madiran',2012,15,'AOC-AOP'),('Madiran',2013,20,'AOC-AOP'),('Marcillac',2010,20,'AOC-AOP'),('Marcillac',2011,30,'AOC-AOP'),('Marcillac',2012,20,'AOC-AOP'),('Marcillac',2013,30,'AOC-AOP'),('Monbazillac',2010,20,'AOC-AOP'),('Monbazillac',2011,100,'AOC-AOP'),('Monbazillac',2012,20,'AOC-AOP'),('Monbazillac',2013,20,'AOC-AOP'),('Montravel',2010,30,'AOC-AOP'),('Montravel',2011,40,'AOC-AOP'),('Montravel',2012,20,'AOC-AOP'),('Montravel',2013,20,'AOC-AOP'),('Rosette',2010,20,'AOC-AOP'),('Rosette',2011,40,'AOC-AOP'),('Rosette',2012,15,'AOC-AOP'),('Rosette',2013,15,'AOC-AOP'),('Saussignac',2013,5,'AOC-AOP'),('Tursan',2010,20,'AOC-AOP'),('Tursan',2011,30,'AOC-AOP'),('Tursan',2012,20,'AOC-AOP'),('Tursan',2013,20,'AOC-AOP'),('Chateau Neuf du Pape',2010,40,'AOC-AOP'),('Chateau Neuf du Pape',2011,70,'AOC-AOP'),('Chateau Neuf du Pape',2012,40,'AOC-AOP'),('Chateau Neuf du Pape',2013,20,'AOC-AOP'),('Luberon',2013,5,'AOC-AOP'),('Ventoux',2013,5,'AOC-AOP'),('Cornas',2010,40,'AOC-AOP'),('Cornas',2011,70,'AOC-AOP'),('Cornas',2012,40,'AOC-AOP'),('Cornas',2013,20,'AOC-AOP'),('Collioure',2010,30,'AOC-AOP'),('Collioure',2011,200,'AOC-AOP'),('Collioure',2012,40,'AOC-AOP'),('Collioure',2013,30,'AOC-AOP'),('Arbois',2010,50,'AOC-AOP'),('Arbois',2011,70,'AOC-AOP'),('Arbois',2012,20,'AOC-AOP'),('Arbois',2013,20,'AOC-AOP'),('Cotes du Rhone',2010,40,'AOC-AOP'),('Cotes du Rhone',2011,70,'AOC-AOP'),('Cotes du Rhone',2012,40,'AOC-AOP'),('Cotes du Rhone',2013,30,'AOC-AOP'),('Banyuls',2010,30,'AOC-AOP'),('Banyuls',2011,50,'AOC-AOP'),('Banyuls',2012,40,'AOC-AOP'),('Banyuls',2013,30,'AOC-AOP'),('Alpilles',2013,5,'IGP'),('Ajaccio',2010,40,'AOC-AOP'),('Ajaccio',2011,30,'AOC-AOP'),('Ajaccio',2012,20,'AOC-AOP'),('Ajaccio',2013,20,'AOC-AOP'),('Sartene',2013,5,'AOC-AOP'),('Figari',2013,5,'AOC-AOP'),('Calvi',2013,5,'AOC-AOP'),('Gers',2013,5,'IGP'),('Cotes de Provence',2010,40,'AOC-AOP'),('Cotes de Provence',2011,20,'AOC-AOP'),('Cotes de Provence',2012,20,'AOC-AOP'),('Cotes de Provence',2013,20,'AOC-AOP');
/*!40000 ALTER TABLE `app_mill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appellation`
--

DROP TABLE IF EXISTS `appellation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appellation` (
  `id_app` smallint(5) unsigned NOT NULL,
  `id_reg` smallint(5) unsigned NOT NULL,
  `nom_app` varchar(100) NOT NULL,
  `type_app` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_app`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appellation`
--

LOCK TABLES `appellation` WRITE;
/*!40000 ALTER TABLE `appellation` DISABLE KEYS */;
INSERT INTO `appellation` VALUES (1,1,'Alsace grand cru','AOC-AOP'),(2,1,'Cremant d\'Alsace','AOC-AOP'),(3,2,'Beaujolais','AOC-AOP'),(4,2,'Beaujolais Villages','AOC-AOP'),(5,2,'Brouilly','AOC-AOP'),(6,2,'Chenas','AOC-AOP'),(7,2,'Chiroubles','AOC-AOP'),(8,2,'Cote de Brouilly','AOC-AOP'),(9,2,'Fleurie','AOC-AOP'),(10,2,'Julienas','AOC-AOP'),(11,2,'Morgon','AOC-AOP'),(12,2,'Moulin-a-Vent','AOC-AOP'),(13,2,'Regnie','AOC-AOP'),(14,2,'Saint-Amour','AOC-AOP'),(15,2,'Comtes Rhodaniens','IGP'),(16,2,'Saone-et-Loire','IGP'),(17,3,'Cotes de Bordeaux','AOC-AOP'),(18,3,'Barsac','AOC-AOP'),(19,3,'Blaye','AOC-AOP'),(20,3,'Bordeaux','AOC-AOP'),(21,3,'Bordeaux superieur','AOC-AOP'),(22,3,'Cadillac','AOC-AOP'),(23,3,'Canon Fronsac','AOC-AOP'),(24,3,'Cerons','AOC-AOP'),(25,3,'Cotes de Blaye','AOC-AOP'),(26,3,'Cotes de Bordeaux-Saint-Macaire','AOC-AOP'),(27,3,'Cotes de Bourg, Bourg et Bourgeais','AOC-AOP'),(28,3,'Cremant de Bordeaux','AOC-AOP'),(29,3,'Entre-deux-Mers','AOC-AOP'),(30,3,'Fronsac','AOC-AOP'),(31,3,'Graves','AOC-AOP'),(32,3,'Graves de Vayres','AOC-AOP'),(33,3,'Graves superieures','AOC-AOP'),(34,3,'Haut-Medoc','AOC-AOP'),(35,3,'Lalande-de-Pomerol','AOC-AOP'),(36,3,'Listrac-Medoc','AOC-AOP'),(37,3,'Loupiac','AOC-AOP'),(38,3,'Lussac-Saint-Emilion','AOC-AOP'),(39,3,'Margaux','AOC-AOP'),(40,3,'Medoc','AOC-AOP'),(41,3,'Montagne-Saint-Emilion','AOC-AOP'),(42,3,'Moulis','AOC-AOP'),(43,3,'Neac','AOC-AOP'),(44,3,'Pauillac','AOC-AOP'),(45,3,'Pessac-Leognan','AOC-AOP'),(46,3,'Pomerol','AOC-AOP'),(47,3,'Premieres Cotes de Bordeaux','AOC-AOP'),(48,3,'Puisseguin-Saint-Emilion','AOC-AOP'),(49,3,'Saint-Emilion','AOC-AOP'),(50,3,'Saint-Emilion grand cru','AOC-AOP'),(51,3,'Saint-Estephe','AOC-AOP'),(52,3,'Saint-Georges-Saint-Emilion','AOC-AOP'),(53,3,'Saint-Julien','AOC-AOP'),(54,3,'Sainte-Croix-du-Mont','AOC-AOP'),(55,3,'Sainte-Foy-Bordeaux','AOC-AOP'),(56,3,'Sauternes','AOC-AOP'),(57,3,'Atlantique','IGP'),(58,3,'Perigord','IGP'),(59,4,'Aloxe-Corton','AOC-AOP'),(60,4,'Auxey-Duresses','AOC-AOP'),(61,4,'Batard-Montrachet','AOC-AOP'),(62,4,'Beaune','AOC-AOP'),(63,4,'Bienvenues-Batard-Montrachet','AOC-AOP'),(64,4,'Blagny','AOC-AOP'),(65,4,'Bonnes-Mares','AOC-AOP'),(66,4,'Bourgogne','AOC-AOP'),(67,4,'Bourgogne aligote','AOC-AOP'),(68,4,'Bourgogne mousseux','AOC-AOP'),(69,4,'Bourgogne Passe-tout-grains','AOC-AOP'),(70,4,'Bouzeron','AOC-AOP'),(71,4,'Chablis','AOC-AOP'),(72,4,'Chablis Grand Cru','AOC-AOP'),(73,4,'Chambertin','AOC-AOP'),(74,4,'Chambertin-Clos de Beze','AOC-AOP'),(75,4,'Chambolle-Musigny','AOC-AOP'),(76,4,'Chapelle-Chambertin','AOC-AOP'),(77,4,'Charlemagne','AOC-AOP'),(78,4,'Corton-Charlemagne','AOC-AOP'),(79,4,'Coteaux Bourguignons','AOC-AOP'),(80,4,'Cremant de Bourgogne','AOC-AOP'),(81,4,'Macon','AOC-AOP'),(82,4,'Mercurey','AOC-AOP'),(83,4,'Meursault','AOC-AOP'),(84,4,'Montagny','AOC-AOP'),(85,4,'Monthelie','AOC-AOP'),(86,4,'Montrachet','AOC-AOP'),(87,4,'Morey-Saint-Denis','AOC-AOP'),(88,4,'Musigny','AOC-AOP'),(89,4,'Nuits-Saint-Georges','AOC-AOP'),(90,4,'Pernand-Vergelesses','AOC-AOP'),(91,4,'Petit Chablis','AOC-AOP'),(92,4,'Pommard','AOC-AOP'),(93,4,'Rully','AOC-AOP'),(94,4,'Santenay','AOC-AOP'),(95,4,'Volnay','AOC-AOP'),(96,4,'Vougeot','AOC-AOP'),(97,4,'Aloxe-Corton','IGP'),(98,4,'Corton-Charlemagne','IGP'),(99,4,'Coteaux de l\'Auxois','IGP'),(100,4,'Coteaux de Tannay','IGP'),(101,4,'Sainte-Marie-la-Blanche','IGP'),(102,4,'Saone-et-Loire','IGP'),(103,4,'Volnay','IGP'),(104,4,'Yonne','IGP'),(105,5,'Champagne','AOC-AOP'),(106,5,'Coteaux champenois','AOC-AOP'),(107,5,'Rose des Riceys','AOC-AOP'),(108,5,'Coteaux de Coiffy','IGP'),(109,5,'Haute-Marne','IGP'),(110,8,'Anjou','AOC-AOP'),(111,8,'Bourgueil','AOC-AOP'),(112,8,'Cabernet d\'Anjou','AOC-AOP'),(113,8,'Chinon','AOC-AOP'),(114,8,'Cremant de Loire','AOC-AOP'),(115,8,'Haut-Poitou','AOC-AOP'),(116,8,'Muscadet','AOC-AOP'),(117,8,'Muscadet Coteaux de la Loire','AOC-AOP'),(118,8,'Rose d\'Anjou','AOC-AOP'),(119,8,'Rosé de Loire','AOC-AOP'),(120,8,'Saint-Nicolas-de-Bourgueil','AOC-AOP'),(121,8,'Saint-Pourçain','AOC-AOP'),(122,8,'Sancerre','AOC-AOP'),(123,8,'Saumur','AOC-AOP'),(124,8,'Calvados','IGP'),(125,8,'Comtes Rhodaniens','IGP'),(126,8,'Coteaux du Cher et de l\'Arnon','IGP'),(127,8,'Cotes de la Charité','IGP'),(128,8,'Haute-Vienne','IGP'),(129,8,'Puy-de-Dome','IGP'),(130,8,'Urfe','IGP'),(131,8,'Saint-Pourçain','IGP'),(132,8,'Val de Loire','IGP'),(133,6,'Bandol','AOC-AOP'),(134,6,'Bellet','AOC-AOP'),(135,6,'Muscat du Cap Corse','AOC-AOP'),(136,6,'Patrimonio','AOC-AOP'),(137,6,'Pierrevert','AOC-AOP'),(138,6,'Vin de Corse','AOC-AOP'),(139,7,'Chateau Neuf du Pape','AOC-AOP'),(140,7,'Cornas','AOC-AOP'),(141,7,'Hermitage','AOC-AOP'),(142,7,'Luberon','AOC-AOP'),(143,7,'Ventoux','AOC-AOP'),(144,9,'Cotes de Bergerac','AOC-AOP'),(145,9,'Gaillac','AOC-AOP'),(146,9,'Jurancon','AOC-AOP'),(147,9,'Madiran','AOC-AOP'),(148,9,'Marcillac','AOC-AOP'),(149,9,'Monbazillac','AOC-AOP'),(150,9,'Montravel','AOC-AOP'),(151,9,'Rosette','AOC-AOP'),(152,9,'Saussignac','AOC-AOP'),(153,9,'Tursan','AOC-AOP'),(154,9,'Collioure','AOC-AOP'),(155,1,'Arbois','AOC-AOP'),(156,7,'Cotes du Rhone','AOC-AOP'),(157,9,'Banyuls','AOC-AOP'),(158,6,'Alpilles','IGP'),(159,6,'Ajaccio','AOC-AOP'),(160,6,'Sartene','AOC-AOP'),(161,6,'Figari','AOC-AOP'),(162,6,'Calvi','AOC-AOP'),(163,9,'Gers','IGP'),(164,6,'Cotes de Provence','AOC-AOP');
/*!40000 ALTER TABLE `appellation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appellation1`
--

DROP TABLE IF EXISTS `appellation1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appellation1` (
  `id_app` smallint(5) unsigned NOT NULL auto_increment,
  `nom_app` varchar(100) NOT NULL,
  `type_app` varchar(100) NOT NULL,
  `region_app` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_app`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appellation1`
--

LOCK TABLES `appellation1` WRITE;
/*!40000 ALTER TABLE `appellation1` DISABLE KEYS */;
INSERT INTO `appellation1` VALUES (1,'Alsace grand cru','AOC-AOP','Alsace'),(2,'Cremant d\'Alsace','AOC-AOP','Alsace'),(3,'Beaujolais','AOC-AOP','Beaujolais'),(4,'Beaujolais Villages','AOC-AOP','Beaujolais'),(5,'Brouilly','AOC-AOP','Beaujolais'),(6,'Chenas','AOC-AOP','Beaujolais'),(7,'Chiroubles','AOC-AOP','Beaujolais'),(8,'Cote de Brouilly','AOC-AOP','Beaujolais'),(9,'Fleurie','AOC-AOP','Beaujolais'),(10,'Julienas','AOC-AOP','Beaujolais'),(11,'Morgon','AOC-AOP','Beaujolais'),(12,'Moulin-a-Vent','AOC-AOP','Beaujolais'),(13,'Regnie','AOC-AOP','Beaujolais'),(14,'Saint-Amour','AOC-AOP','Beaujolais'),(15,'Comtes Rhodaniens','IGP','Beaujolais'),(16,'Saone-et-Loire','IGP','Beaujolais'),(17,'Cotes de Bordeaux','AOC-AOP','Bordeaux'),(18,'Barsac','AOC-AOP','Bordeaux'),(19,'Blaye','AOC-AOP','Bordeaux'),(20,'Bordeaux','AOC-AOP','Bordeaux'),(21,'Bordeaux superieur','AOC-AOP','Bordeaux'),(22,'Cadillac','AOC-AOP','Bordeaux'),(23,'Canon Fronsac','AOC-AOP','Bordeaux'),(24,'Cerons','AOC-AOP','Bordeaux'),(25,'Cotes de Blaye','AOC-AOP','Bordeaux'),(26,'Cotes de Bordeaux-Saint-Macaire','AOC-AOP','Bordeaux'),(27,'Cotes de Bourg, Bourg et Bourgeais','AOC-AOP','Bordeaux'),(28,'Cremant de Bordeaux','AOC-AOP','Bordeaux'),(29,'Entre-deux-Mers','AOC-AOP','Bordeaux'),(30,'Fronsac','AOC-AOP','Bordeaux'),(31,'Graves','AOC-AOP','Bordeaux'),(32,'Graves de Vayres','AOC-AOP','Bordeaux'),(33,'Graves superieures','AOC-AOP','Bordeaux'),(34,'Haut-Medoc','AOC-AOP','Bordeaux'),(35,'Lalande-de-Pomerol','AOC-AOP','Bordeaux'),(36,'Listrac-Medoc','AOC-AOP','Bordeaux'),(37,'Loupiac','AOC-AOP','Bordeaux'),(38,'Lussac-Saint-Emilion','AOC-AOP','Bordeaux'),(39,'Margaux','AOC-AOP','Bordeaux'),(40,'Medoc','AOC-AOP','Bordeaux'),(41,'Montagne-Saint-Emilion','AOC-AOP','Bordeaux'),(42,'Moulis','AOC-AOP','Bordeaux'),(43,'Neac','AOC-AOP','Bordeaux'),(44,'Pauillac','AOC-AOP','Bordeaux'),(45,'Pessac-Leognan','AOC-AOP','Bordeaux'),(46,'Pomerol','AOC-AOP','Bordeaux'),(47,'Premieres Cotes de Bordeaux','AOC-AOP','Bordeaux'),(48,'Puisseguin-Saint-Emilion','AOC-AOP','Bordeaux'),(49,'Saint-Emilion','AOC-AOP','Bordeaux'),(50,'Saint-Emilion grand cru','AOC-AOP','Bordeaux'),(51,'Saint-Estephe','AOC-AOP','Bordeaux'),(52,'Saint-Georges-Saint-Emilion','AOC-AOP','Bordeaux'),(53,'Saint-Julien','AOC-AOP','Bordeaux'),(54,'Sainte-Croix-du-Mont','AOC-AOP','Bordeaux'),(55,'Sainte-Foy-Bordeaux','AOC-AOP','Bordeaux'),(56,'Sauternes','AOC-AOP','Bordeaux'),(57,'Atlantique','IGP','Bordeaux'),(58,'Perigord','IGP','Bordeaux'),(59,'Aloxe-Corton','AOC-AOP','Bourgogne'),(60,'Auxey-Duresses','AOC-AOP','Bourgogne'),(61,'Batard-Montrachet','AOC-AOP','Bourgogne'),(62,'Beaune','AOC-AOP','Bourgogne'),(63,'Bienvenues-Batard-Montrachet','AOC-AOP','Bourgogne'),(64,'Blagny','AOC-AOP','Bourgogne'),(65,'Bonnes-Mares','AOC-AOP','Bourgogne'),(66,'Bourgogne','AOC-AOP','Bourgogne'),(67,'Bourgogne aligote','AOC-AOP','Bourgogne'),(68,'Bourgogne mousseux','AOC-AOP','Bourgogne'),(69,'Bourgogne Passe-tout-grains','AOC-AOP','Bourgogne'),(70,'Bouzeron','AOC-AOP','Bourgogne'),(71,'Chablis','AOC-AOP','Bourgogne'),(72,'Chablis Grand Cru','AOC-AOP','Bourgogne'),(73,'Chambertin','AOC-AOP','Bourgogne'),(74,'Chambertin-Clos de Beze','AOC-AOP','Bourgogne'),(75,'Chambolle-Musigny','AOC-AOP','Bourgogne'),(76,'Chapelle-Chambertin','AOC-AOP','Bourgogne'),(77,'Charlemagne','AOC-AOP','Bourgogne'),(78,'Corton-Charlemagne','AOC-AOP','Bourgogne'),(79,'Coteaux Bourguignons','AOC-AOP','Bourgogne'),(80,'Cremant de Bourgogne','AOC-AOP','Bourgogne'),(81,'Macon','AOC-AOP','Bourgogne'),(82,'Mercurey','AOC-AOP','Bourgogne'),(83,'Meursault','AOC-AOP','Bourgogne'),(84,'Montagny','AOC-AOP','Bourgogne'),(85,'Monthelie','AOC-AOP','Bourgogne'),(86,'Montrachet','AOC-AOP','Bourgogne'),(87,'Morey-Saint-Denis','AOC-AOP','Bourgogne'),(88,'Musigny','AOC-AOP','Bourgogne'),(89,'Nuits-Saint-Georges','AOC-AOP','Bourgogne'),(90,'Pernand-Vergelesses','AOC-AOP','Bourgogne'),(91,'Petit Chablis','AOC-AOP','Bourgogne'),(92,'Pommard','AOC-AOP','Bourgogne'),(93,'Rully','AOC-AOP','Bourgogne'),(94,'Santenay','AOC-AOP','Bourgogne'),(95,'Volnay','AOC-AOP','Bourgogne'),(96,'Vougeot','AOC-AOP','Bourgogne'),(97,'Aloxe-Corton','IGP','Bourgogne'),(98,'Corton-Charlemagne','IGP','Bourgogne'),(99,'Coteaux de l\'Auxois','IGP','Bourgogne'),(100,'Coteaux de Tannay','IGP','Bourgogne'),(101,'Sainte-Marie-la-Blanche','IGP','Bourgogne'),(102,'Saone-et-Loire','IGP','Bourgogne'),(103,'Volnay','IGP','Bourgogne'),(104,'Yonne','IGP','Bourgogne'),(105,'Champagne','AOC-AOP','Champagne'),(106,'Coteaux champenois','AOC-AOP','Champagne'),(107,'Rose des Riceys','AOC-AOP','Champagne'),(108,'Coteaux de Coiffy','IGP','Champagne'),(109,'Haute-Marne','IGP','Champagne'),(110,'Anjou','AOC-AOP','Loire'),(111,'Bourgueil','AOC-AOP','Loire'),(112,'Cabernet d\'Anjou','AOC-AOP','Loire'),(113,'Chinon','AOC-AOP','Loire'),(114,'Cremant de Loire','AOC-AOP','Loire'),(115,'Haut-Poitou','AOC-AOP','Loire'),(116,'Muscadet','AOC-AOP','Loire'),(117,'Muscadet Coteaux de la Loire','AOC-AOP','Loire'),(118,'Rose d\'Anjou','AOC-AOP','Loire'),(119,'Rosé de Loire','AOC-AOP','Loire'),(120,'Saint-Nicolas-de-Bourgueil','AOC-AOP','Loire'),(121,'Saint-Pourçain','AOC-AOP','Loire'),(122,'Sancerre','AOC-AOP','Loire'),(123,'Saumur','AOC-AOP','Loire'),(124,'Calvados','IGP','Loire'),(125,'Comtes Rhodaniens','IGP','Loire'),(126,'Coteaux du Cher et de l\'Arnon','IGP','Loire'),(127,'Cotes de la Charité','IGP','Loire'),(128,'Haute-Vienne','IGP','Loire'),(129,'Puy-de-Dome','IGP','Loire'),(130,'Urfe','IGP','Loire'),(131,'Saint-Pourçain','IGP','Loire'),(132,'Val de Loire','IGP','Loire'),(133,'Bandol','AOC-AOP','Corse'),(134,'Bellet','AOC-AOP','Corse'),(135,'Muscat du Cap Corse','AOC-AOP','Corse'),(136,'Patrimonio','AOC-AOP','Corse'),(137,'Pierrevert','AOC-AOP','Corse'),(138,'Vin de Corse','AOC-AOP','Corse'),(139,'Chateau Neuf du Pape','AOC-AOP','Rhone'),(140,'Cornas','AOC-AOP','Rhone'),(141,'Hermitage','AOC-AOP','Rhone'),(142,'Luberon','AOC-AOP','Rhone'),(143,'Ventoux','AOC-AOP','Rhone'),(144,'Cotes de Bergerac','AOC-AOP','Sud-Ouest'),(145,'Gaillac','AOC-AOP','Sud-Ouest'),(146,'Jurancon','AOC-AOP','Sud-Ouest'),(147,'Madiran','AOC-AOP','Sud-Ouest'),(148,'Marcillac','AOC-AOP','Sud-Ouest'),(149,'Monbazillac','AOC-AOP','Sud-Ouest'),(150,'Montravel','AOC-AOP','Sud-Ouest'),(151,'Rosette','AOC-AOP','Sud-Ouest'),(152,'Saussignac','AOC-AOP','Sud-Ouest'),(153,'Tursan','AOC-AOP','Sud-Ouest'),(154,'Collioure','AOC-AOP','Sud-Ouest'),(155,'Arbois','AOC-AOP','Alsace'),(156,'Cotes du Rhone','AOC-AOP','Rhone'),(157,'Banyuls','AOC-AOP','Sud-Ouest'),(158,'Alpilles','IGP','Corse'),(159,'Ajaccio','AOC-AOP','Corse'),(160,'Sartene','AOC-AOP','Corse'),(161,'Figari','AOC-AOP','Corse'),(162,'Calvi','AOC-AOP','Corse'),(163,'Gers','IGP','Sud-Ouest'),(164,'Cotes de Provence','AOC-AOP','Corse');
/*!40000 ALTER TABLE `appellation1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associe`
--

DROP TABLE IF EXISTS `associe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `associe` (
  `id_repas` smallint(5) unsigned NOT NULL,
  `id_vin` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`id_repas`,`id_vin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associe`
--

LOCK TABLES `associe` WRITE;
/*!40000 ALTER TABLE `associe` DISABLE KEYS */;
INSERT INTO `associe` VALUES (1,4),(1,5),(1,6),(1,7),(1,10),(1,11),(1,14),(1,16),(1,17),(1,19),(1,20),(1,21),(1,23),(1,29),(1,32),(1,36),(1,42),(1,44),(1,46),(1,49),(1,66),(1,67),(1,68),(1,69),(1,71),(2,1),(2,3),(2,8),(2,12),(2,13),(2,18),(2,22),(2,24),(2,25),(2,34),(2,40),(2,43),(2,47),(2,50),(3,1),(3,3),(3,8),(3,12),(3,13),(3,18),(3,22),(3,24),(3,25),(3,34),(3,40),(3,43),(3,47),(3,50),(4,1),(4,3),(4,8),(4,12),(4,13),(4,18),(4,22),(4,24),(4,25),(4,34),(4,40),(4,43),(4,47),(4,50),(5,9),(5,15),(5,26),(5,41),(5,45),(5,48),(5,63),(6,9),(6,15),(6,26),(6,41),(6,45),(6,48),(6,63),(7,1),(7,3),(7,8),(7,12),(7,13),(7,18),(7,22),(7,24),(7,25),(7,34),(7,40),(7,43),(7,47),(7,50),(8,28),(8,30),(8,33),(8,39),(8,56),(8,57),(8,58),(8,65),(8,72),(9,1),(9,3),(9,8),(9,12),(9,13),(9,18),(9,22),(9,24),(9,25),(9,34),(9,40),(9,43),(9,47),(9,50),(10,1),(10,3),(10,8),(10,12),(10,13),(10,18),(10,22),(10,24),(10,25),(10,34),(10,40),(10,43),(10,47),(10,50),(11,28),(11,30),(11,33),(11,39),(11,56),(11,57),(11,58),(11,65),(11,72),(12,28),(12,30),(12,33),(12,39),(12,56),(12,57),(12,58),(12,65),(12,72),(13,4),(13,5),(13,6),(13,7),(13,10),(13,11),(13,14),(13,16),(13,17),(13,19),(13,20),(13,21),(13,23),(13,29),(13,32),(13,36),(13,42),(13,44),(13,46),(13,49),(13,66),(13,67),(13,68),(13,69),(13,71),(14,1),(14,3),(14,8),(14,12),(14,13),(14,18),(14,22),(14,24),(14,25),(14,34),(14,40),(14,43),(14,47),(14,50),(15,4),(15,5),(15,6),(15,7),(15,10),(15,11),(15,14),(15,16),(15,17),(15,19),(15,20),(15,21),(15,23),(15,29),(15,32),(15,36),(15,42),(15,44),(15,46),(15,49),(15,66),(15,67),(15,68),(15,69),(15,71),(16,9),(16,15),(16,26),(16,41),(16,45),(16,48),(16,63),(17,1),(17,3),(17,8),(17,12),(17,13),(17,18),(17,22),(17,24),(17,25),(17,34),(17,40),(17,43),(17,47),(17,50),(18,4),(18,5),(18,6),(18,7),(18,10),(18,11),(18,14),(18,16),(18,17),(18,19),(18,20),(18,21),(18,23),(18,29),(18,32),(18,36),(18,42),(18,44),(18,46),(18,49),(18,66),(18,67),(18,68),(18,69),(18,71),(19,4),(19,5),(19,6),(19,7),(19,10),(19,11),(19,14),(19,16),(19,17),(19,19),(19,20),(19,21),(19,23),(19,29),(19,32),(19,36),(19,42),(19,44),(19,46),(19,49),(19,66),(19,67),(19,68),(19,69),(19,71),(20,9),(20,15),(20,26),(20,41),(20,45),(20,48),(20,63),(21,4),(21,5),(21,6),(21,7),(21,10),(21,11),(21,14),(21,16),(21,17),(21,19),(21,20),(21,21),(21,23),(21,29),(21,32),(21,36),(21,42),(21,44),(21,46),(21,49),(21,66),(21,67),(21,68),(21,69),(21,71),(22,4),(22,5),(22,6),(22,7),(22,10),(22,11),(22,14),(22,16),(22,17),(22,19),(22,20),(22,21),(22,23),(22,29),(22,32),(22,36),(22,42),(22,44),(22,46),(22,49),(22,66),(22,67),(22,68),(22,69),(22,71),(23,1),(23,3),(23,8),(23,12),(23,13),(23,18),(23,22),(23,24),(23,25),(23,34),(23,40),(23,43),(23,47),(23,50),(24,2),(24,27),(24,31),(24,37),(24,38),(24,54),(24,59),(24,60),(24,62),(24,64),(24,70),(25,1),(25,3),(25,8),(25,12),(25,13),(25,18),(25,22),(25,24),(25,25),(25,34),(25,40),(25,43),(25,47),(25,50),(26,4),(26,5),(26,6),(26,7),(26,10),(26,11),(26,14),(26,16),(26,17),(26,19),(26,20),(26,21),(26,23),(26,29),(26,32),(26,36),(26,42),(26,44),(26,46),(26,49),(26,66),(26,67),(26,68),(26,69),(26,71),(27,1),(27,3),(27,8),(27,12),(27,13),(27,18),(27,22),(27,24),(27,25),(27,34),(27,40),(27,43),(27,47),(27,50),(28,1),(28,3),(28,8),(28,12),(28,13),(28,18),(28,22),(28,24),(28,25),(28,34),(28,40),(28,43),(28,47),(28,50),(29,9),(29,15),(29,26),(29,41),(29,45),(29,48),(29,63),(30,4),(30,5),(30,6),(30,7),(30,10),(30,11),(30,14),(30,16),(30,17),(30,19),(30,20),(30,21),(30,23),(30,29),(30,32),(30,36),(30,42),(30,44),(30,46),(30,49),(30,66),(30,67),(30,68),(30,69),(30,71),(31,9),(31,15),(31,26),(31,41),(31,45),(31,48),(31,63),(32,4),(32,5),(32,6),(32,7),(32,10),(32,11),(32,14),(32,16),(32,17),(32,19),(32,20),(32,21),(32,23),(32,29),(32,32),(32,36),(32,42),(32,44),(32,46),(32,49),(32,66),(32,67),(32,68),(32,69),(32,71),(33,2),(33,27),(33,31),(33,37),(33,38),(33,54),(33,59),(33,60),(33,62),(33,64),(33,70),(34,4),(34,5),(34,6),(34,7),(34,10),(34,11),(34,14),(34,16),(34,17),(34,19),(34,20),(34,21),(34,23),(34,29),(34,32),(34,36),(34,42),(34,44),(34,46),(34,49),(34,66),(34,67),(34,68),(34,69),(34,71),(35,1),(35,3),(35,8),(35,12),(35,13),(35,18),(35,22),(35,24),(35,25),(35,34),(35,40),(35,43),(35,47),(35,50),(36,4),(36,5),(36,6),(36,7),(36,10),(36,11),(36,14),(36,16),(36,17),(36,19),(36,20),(36,21),(36,23),(36,29),(36,32),(36,36),(36,42),(36,44),(36,46),(36,49),(36,66),(36,67),(36,68),(36,69),(36,71),(37,1),(37,3),(37,8),(37,12),(37,13),(37,18),(37,22),(37,24),(37,25),(37,34),(37,40),(37,43),(37,47),(37,50),(38,35),(38,51),(38,52),(38,53),(38,55),(38,61),(39,1),(39,3),(39,8),(39,12),(39,13),(39,18),(39,22),(39,24),(39,25),(39,34),(39,40),(39,43),(39,47),(39,50),(40,1),(40,3),(40,8),(40,12),(40,13),(40,18),(40,22),(40,24),(40,25),(40,34),(40,40),(40,43),(40,47),(40,50),(41,1),(41,3),(41,8),(41,12),(41,13),(41,18),(41,22),(41,24),(41,25),(41,34),(41,40),(41,43),(41,47),(41,50),(42,1),(42,3),(42,8),(42,12),(42,13),(42,18),(42,22),(42,24),(42,25),(42,34),(42,40),(42,43),(42,47),(42,50),(43,4),(43,5),(43,6),(43,7),(43,10),(43,11),(43,14),(43,16),(43,17),(43,19),(43,20),(43,21),(43,23),(43,29),(43,32),(43,36),(43,42),(43,44),(43,46),(43,49),(43,66),(43,67),(43,68),(43,69),(43,71),(44,9),(44,15),(44,26),(44,41),(44,45),(44,48),(44,63),(45,9),(45,15),(45,26),(45,41),(45,45),(45,48),(45,63),(46,1),(46,3),(46,8),(46,12),(46,13),(46,18),(46,22),(46,24),(46,25),(46,34),(46,40),(46,43),(46,47),(46,50),(47,4),(47,5),(47,6),(47,7),(47,10),(47,11),(47,14),(47,16),(47,17),(47,19),(47,20),(47,21),(47,23),(47,29),(47,32),(47,36),(47,42),(47,44),(47,46),(47,49),(47,66),(47,67),(47,68),(47,69),(47,71),(48,28),(48,30),(48,33),(48,39),(48,56),(48,57),(48,58),(48,65),(48,72),(49,1),(49,3),(49,8),(49,12),(49,13),(49,18),(49,22),(49,24),(49,25),(49,34),(49,40),(49,43),(49,47),(49,50),(50,2),(50,27),(50,31),(50,37),(50,38),(50,54),(50,59),(50,60),(50,62),(50,64),(50,70),(51,28),(51,30),(51,33),(51,39),(51,56),(51,57),(51,58),(51,65),(51,72),(52,1),(52,3),(52,8),(52,12),(52,13),(52,18),(52,22),(52,24),(52,25),(52,34),(52,40),(52,43),(52,47),(52,50),(53,9),(53,15),(53,26),(53,41),(53,45),(53,48),(53,63),(54,28),(54,30),(54,33),(54,39),(54,56),(54,57),(54,58),(54,65),(54,72),(55,28),(55,30),(55,33),(55,39),(55,56),(55,57),(55,58),(55,65),(55,72),(56,28),(56,30),(56,33),(56,39),(56,56),(56,57),(56,58),(56,65),(56,72),(57,35),(57,51),(57,52),(57,53),(57,55),(57,61),(58,28),(58,30),(58,33),(58,39),(58,56),(58,57),(58,58),(58,65),(58,72),(59,28),(59,30),(59,33),(59,39),(59,56),(59,57),(59,58),(59,65),(59,72),(60,28),(60,30),(60,33),(60,39),(60,56),(60,57),(60,58),(60,65),(60,72),(61,28),(61,30),(61,33),(61,39),(61,56),(61,57),(61,58),(61,65),(61,72),(62,35),(62,51),(62,52),(62,53),(62,55),(62,61),(63,28),(63,30),(63,33),(63,39),(63,56),(63,57),(63,58),(63,65),(63,72);
/*!40000 ALTER TABLE `associe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cepage`
--

DROP TABLE IF EXISTS `cepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cepage` (
  `id_cepage` smallint(5) unsigned NOT NULL auto_increment,
  `nom_cepage` varchar(100) NOT NULL,
  `couleur_cepage` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_cepage`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cepage`
--

LOCK TABLES `cepage` WRITE;
/*!40000 ALTER TABLE `cepage` DISABLE KEYS */;
INSERT INTO `cepage` VALUES (1,'Aligote','blanc'),(2,'Altesse','blanc'),(3,'Auxerrois','blanc'),(4,'Bergeron','blanc'),(5,'Bourboulenc','blanc'),(6,'Carignan blanc','blanc'),(7,'Chardonnay','blanc'),(8,'Chasselas','blanc'),(9,'Chenin','blanc'),(10,'Clairette','blanc'),(11,'Colombard','blanc'),(12,'Folle Blanche','blanc'),(13,'Grenache blanc','blanc'),(14,'Gros manseng','blanc'),(15,'Gros Plant','blanc'),(16,'Jaquere','blanc'),(17,'Len de l\'el','blanc'),(18,'Maccabeu','blanc'),(19,'Marsanne','blanc'),(20,'Mauzac','blanc'),(21,'Melon','blanc'),(22,'Muscadelle','blanc'),(23,'Muscat à petits grains','blanc'),(24,'Muscat d\'Alexandrie','blanc'),(25,'Muscat ottonel','blanc'),(26,'Orbois','blanc'),(27,'Petit manseng','blanc'),(28,'Pinot blanc','blanc'),(29,'Piquepoul','blanc'),(30,'Riesling','blanc'),(31,'Rolle','blanc'),(32,'Romorantin','blanc'),(33,'Roussanne','blanc'),(34,'Sauvignon','blanc'),(35,'Savagnin','blanc'),(36,'Semillon','blanc'),(37,'Sylvaner','blanc'),(38,'Terret blanc','blanc'),(39,'Ugni blanc','blanc'),(40,'Vermentino','blanc'),(41,'Viognier','blanc'),(42,'Grenache gris','gris'),(43,'Grolleau gris','gris'),(44,'Pinot gris','gris'),(45,'Sauvignon gris','gris'),(46,'Abouriou','noir'),(47,'Cabernet franc','noir'),(48,'Cabernet sauvignon','noir'),(49,'Carignan','noir'),(50,'Carmenere','noir'),(51,'Cinsault','noir'),(52,'Cot','noir'),(53,'Counoise','noir'),(54,'Duras','noir'),(55,'Fer','noir'),(56,'Gamay','noir'),(57,'Gamay de Bouze','noir'),(58,'Gamay de Chaudenay','noir'),(59,'Grenache noir','noir'),(60,'Grolleau','noir'),(61,'Lledoner Pelut','noir'),(62,'Malbec','noir'),(63,'Marselan','noir'),(64,'Merlot','noir'),(65,'Meunier','noir'),(66,'Mondeuse','noir'),(67,'Mourvedre','noir'),(68,'Muscat de Hambourg','noir'),(69,'Negrette','noir'),(70,'Niellucio','noir'),(71,'Petit verdot','noir'),(72,'Pineau d\'Aunis','noir'),(73,'Pinot noir','noir'),(74,'Piquepoul noir','noir'),(75,'Poulsard','noir'),(76,'Sciaccarello','noir'),(77,'Syrah','noir'),(78,'Tannat','noir'),(79,'Terret noir','noir'),(80,'Tibouren','noir'),(81,'Trousseau','noir'),(82,'Clairette rose','rose'),(83,'Gewurztraminer','rose'),(84,'Savagnin rose','rose'),(85,'Muscat à petits grains rouges','rouge');
/*!40000 ALTER TABLE `cepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` smallint(5) unsigned NOT NULL auto_increment,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `pseudo` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Benjamin','Schuler','benjamin.schuler8@orange.fr','bschuler','morewine'),(2,'Amaury','Lacave','amaury.lacave@insa-rouen.fr','alacave','morewine');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composeA`
--

DROP TABLE IF EXISTS `composeA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composeA` (
  `id_cepage` smallint(5) unsigned NOT NULL,
  `id_app` smallint(5) unsigned NOT NULL,
  PRIMARY KEY  (`id_cepage`,`id_app`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composeA`
--

LOCK TABLES `composeA` WRITE;
/*!40000 ALTER TABLE `composeA` DISABLE KEYS */;
INSERT INTO `composeA` VALUES (7,71),(7,72),(7,78),(7,81),(7,98),(7,105),(7,114),(7,123),(9,110),(9,112),(9,123),(13,154),(13,156),(13,157),(13,158),(14,146),(17,57),(17,58),(17,145),(17,163),(34,31),(34,33),(34,104),(34,122),(47,3),(47,110),(47,111),(47,113),(47,123),(48,46),(48,49),(48,50),(56,3),(56,59),(56,97),(56,110),(56,115),(59,139),(64,30),(64,39),(64,46),(64,49),(64,147),(64,152),(73,66),(73,71),(73,82),(73,106),(73,122),(75,57),(75,58),(75,155),(76,159),(76,160),(76,161),(76,162),(77,129),(77,140),(77,141),(77,154),(80,57),(80,58),(80,164),(81,57),(81,58),(81,155);
/*!40000 ALTER TABLE `composeA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composeA1`
--

DROP TABLE IF EXISTS `composeA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `composeA1` (
  `id_cepage` smallint(5) unsigned NOT NULL,
  `appellation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composeA1`
--

LOCK TABLES `composeA1` WRITE;
/*!40000 ALTER TABLE `composeA1` DISABLE KEYS */;
INSERT INTO `composeA1` VALUES (7,'Chablis'),(7,'Chablis Grand Cru'),(7,'Macon'),(7,'Champagne'),(7,'Cremant de Loire'),(7,'Corton-Charlemagne'),(7,'Saumur'),(9,'Anjou'),(9,'Cabernet d\'Anjou'),(9,'Saumur'),(13,'Cotes du Rhone'),(13,'Collioure'),(13,'Banyuls'),(13,'Alpilles'),(14,'Jurancon'),(17,'Gaillac'),(17,'Atlantique'),(17,'Perigord'),(17,'Gers'),(34,'Graves'),(34,'Graves superieures'),(34,'Sancerre'),(34,'Yonne'),(47,'Anjou'),(47,'Saumur'),(47,'Chinon'),(47,'Bourgueil'),(47,'Beaujolais'),(48,'Pomerol'),(48,'Saint-Emilion'),(48,'Saint-Emilion grand cru'),(56,'Beaujolais'),(56,'Anjou'),(56,'Haut-Poitou'),(56,'Aloxe-Corton'),(59,'Chateau Neuf du Pape'),(64,'Fronsac'),(64,'Pomerol'),(64,'Saint-Emilion'),(64,'Saussignac'),(64,'Madiran'),(64,'Margaux'),(73,'Bourgogne'),(73,'Chablis'),(73,'Mercurey'),(73,'Coteaux Champenois'),(73,'Sancerre'),(75,'Perigord'),(75,'Atlantique'),(75,'Arbois'),(76,'Ajaccio'),(76,'Sartene'),(76,'Figari'),(76,'Calvi'),(77,'Hermitage'),(77,'Cornas'),(77,'Puy-de-Dome'),(77,'Collioure'),(80,'Atlantique'),(80,'Perigord'),(80,'Cotes de Provence'),(81,'Cotes du Jura'),(81,'Perigord'),(81,'Arbois'),(81,'Atlantique'),(83,'Alsace');
/*!40000 ALTER TABLE `composeA1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `id_reg` smallint(5) unsigned NOT NULL auto_increment,
  `nom_reg` varchar(100) NOT NULL,
  `pays` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Alsace','France'),(2,'Beaujolais','France'),(3,'Bordeaux','France'),(4,'Bourgogne','France'),(5,'Champagne','France'),(6,'Corse','France'),(7,'Rhone','France'),(8,'Loire','France'),(9,'Sud-Ouest','France');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repas`
--

DROP TABLE IF EXISTS `repas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repas` (
  `id_repas` smallint(5) unsigned NOT NULL auto_increment,
  `type_repas` varchar(100) NOT NULL,
  `nom_repas` varchar(100) NOT NULL,
  `couleur` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_repas`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repas`
--

LOCK TABLES `repas` WRITE;
/*!40000 ALTER TABLE `repas` DISABLE KEYS */;
INSERT INTO `repas` VALUES (1,'Aperitif','Charcuterie','Rouge Sec'),(2,'Aperitif','Grenouille','Blanc Sec'),(3,'Aperitif','Crustace','Blanc Sec'),(4,'Aperitif','Aspic de Poisson','Blanc Sec'),(5,'Aperitif','Legumes Cuits','Rose Sec'),(6,'Aperitif','Olives','Rose Sec'),(7,'Aperitif','Verrine de Poisson','Blanc Sec'),(8,'Aperitif','Verrine de Foie Gras','Blanc Doux'),(9,'Aperitif','Oeufs de Caille','Blanc Sec'),(10,'Aperitif','Creme Veloute Mousse','Blanc Sec'),(11,'Entree','Foie Gras','Blanc Doux'),(12,'Entree','Fruit exotique','Blanc Doux'),(13,'Entree','Escargot','Rouge Sec'),(14,'Entree','Tartare de poisson','Blanc Sec'),(15,'Entree','Salade composee','Rouge Sec'),(16,'Entree','Soupe de poisson','Rose Sec'),(17,'Entree','Soupe de legumes','Blanc Sec'),(18,'Entree','Terrine','Rouge Sec'),(19,'Entree','Carpaccio de viande crue','Rouge Sec'),(20,'Entree','Assiete de crudites','Rose Sec'),(21,'Plat Principal','Abats à la plancha','Rouge Sec'),(22,'Plat Principal','Cassoulet','Rouge Sec'),(23,'Plat Principal','Brandade de poisson','Blanc Sec'),(24,'Plat Principal','Sandwich','Rouge Doux'),(25,'Plat Principal','Raclette','Blanc Sec'),(26,'Plat Principal','Pot au feu','Rouge Sec'),(27,'Plat Principal','Pomme de terre','Blanc Sec'),(28,'Plat Principal','Plateau de fruits de mer','Blanc Sec'),(29,'Plat Principal','Ratatouille','Rose Sec'),(30,'Plat Principal','Ravioles à la viande','Rouge Sec'),(31,'Plat Principal','Riz pilaf','Rose Sec'),(32,'Plat Principal','Viande Rouge','Rouge Sec'),(33,'Plat Principal','Viande Blanche','Rouge Doux'),(34,'Plat Principal','Magret de canard','Rouge Sec'),(35,'Plat Principal','Tartiflette','Blanc Sec'),(36,'Plat Principal','Andouillettes','Rouge Sec'),(37,'Plat Principal','Poisson','Blanc Sec'),(38,'Plat Principal','Pizza','Rose Doux'),(39,'Plat Principal','Risotto','Blanc Sec'),(40,'Plat Principal','Legume','Blanc Sec'),(41,'Plat Principal','Pates aux legumes','Blanc Sec'),(42,'Plat Principal','Pates au fromage','Blanc Sec'),(43,'Plat Principal','Pates a la viande','Rouge Sec'),(44,'Plat Principal','Tortilla','Rose Sec'),(45,'Plat Principal','Couscous','Rose Sec'),(46,'Fromage','Fromage a pate fraiche','Blanc Sec'),(47,'Fromage','Fromage a pate pressee non cuite','Rouge Sec'),(48,'Fromage','Fromage a pate persillee cuite','Blanc Doux'),(49,'Fromage','Fromage a pate pressee cuite','Blanc Sec'),(50,'Fromage','Fromage a pate molle','Rouge Doux'),(51,'Fromage','Fromage a pate persillee non cuite ou crue','Blanc Doux'),(52,'Fromage','Fromage a pate presse demi cuite','Blanc Sec'),(53,'Fromage','Salade de fromage','Rose Sec'),(54,'Dessert','Chocolat','Blanc Doux'),(55,'Dessert','Crepe ou gauffre','Blanc Doux'),(56,'Dessert','Flan aux oeufs','Blanc Doux'),(57,'Dessert','Clafoutis','Rose Doux'),(58,'Dessert','Gateau aux fruits','Blanc Doux'),(59,'Dessert','Tarte aux fruits','Blanc Doux'),(60,'Dessert','Confiserie','Blanc Doux'),(61,'Dessert','Pain perdu','Blanc Doux'),(62,'Dessert','Pudding','Rose Doux'),(63,'Dessert','Oeufs a la neige','Blanc Doux');
/*!40000 ALTER TABLE `repas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vin`
--

DROP TABLE IF EXISTS `vin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vin` (
  `id_vin` smallint(5) unsigned NOT NULL auto_increment,
  `nom_vin` varchar(500) NOT NULL,
  `app` varchar(100) NOT NULL,
  `couleur` varchar(100) NOT NULL,
  `type_app` varchar(100) NOT NULL,
  `date` int(11) NOT NULL,
  `vol` float NOT NULL,
  PRIMARY KEY  (`id_vin`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vin`
--

LOCK TABLES `vin` WRITE;
/*!40000 ALTER TABLE `vin` DISABLE KEYS */;
INSERT INTO `vin` VALUES (1,'Macon Fleur Blanche','Macon','Blanc Sec','AOC-AOP',2012,0.75),(2,'Chateau du Breuil','Anjou','Rouge Doux','AOC-AOP',2013,0.75),(3,'Riesling','Alsace','Blanc Sec','AOC-AOP',2011,0.75),(4,'Chateau Moulinet','Pomerol','Rouge Sec','AOC-AOP',2012,0.2),(5,'Mercurey 2010','Mercurey','Rouge Sec','AOC-AOP',2010,0.75),(6,'Chateau Neuf du Pape cuvee papale','Chateau Neuf du Pape','Rouge Sec','AOC-AOP',2013,1.5),(7,'Chateau la Tour de Mons','Margaux','Rouge Sec','AOC-AOP',2012,0.75),(8,'Blanc Mercurey','Mercurey','Blanc Sec','AOC-AOP',2010,0.75),(9,'Chateau de Pibarnon','Bandol','Rose Sec','AOC-AOP',2012,0.75),(10,'Cheval noir','Saint-Emilion','Rouge Sec','AOC-AOP',2013,1.5),(11,'Les Chaillots','Aloxe-Corton','Rouge Sec','IGP',2010,0.75),(12,'Hermitage','Hermitage','Blanc Sec','AOC-AOP',2011,0.75),(13,'Les Preuses','Chablis','Blanc Sec','AOC-AOP',2012,0.75),(14,'Chevalier Pere et Fils','Aloxe-Corton','Rouge Sec','AOC-AOP',2012,0.75),(15,'Coeur de Grain','Bandol','Rose Sec','AOC-AOP',2011,1.5),(16,'Chateau Prieure-Lichine','Margaux','Rouge Sec','AOC-AOP',2010,0.75),(17,'Chateau Rouget','Pomerol','Rouge Sec','AOC-AOP',2012,0.75),(18,'Corton Charlemagne Latour','Corton-Charlemagne','Blanc Sec','IGP',2010,0.75),(19,'Chateau Lafleur','Pomerol','Rouge Sec','AOC-AOP',2010,0.75),(20,'L\'Immortelle Chateau de La Gardine','Chateau Neuf du Pape','Rouge Sec','AOC-AOP',2012,15),(21,'Chateau Coudray Montpensier','Chinon','Rouge Sec','AOC-AOP',2012,0.75),(22,'La Jouvencelle','Saumur','Blanc Sec','AOC-AOP',2013,0.75),(23,'Torus 2011','Madiran','Rouge Sec','AOC-AOP',2011,0.75),(24,'Ackerman','Cremant de Loire','Blanc Sec','AOC-AOP',2013,0.75),(25,'Beaujolais Automne Bel Air','Beaujolais','Blanc Sec','AOC-AOP',2012,0.75),(26,'Langlois-Chateau','Cremant de Loire','Rose Sec','AOC-AOP',2010,0.75),(27,'Chateau de Pizay','Beaujolais','Rouge Doux','AOC-AOP',2013,0.75),(28,'Chateau de Fosse-Seche','Bourgeuil','Blanc Doux','AOC-AOP',2010,0.75),(29,'Madiran Ode d\'Aydie','Madiran','Rouge Sec','AOC-AOP',2011,0.75),(30,'Jurancon reserve royale','Jurancon','Blanc Doux','AOC-AOP',2011,0.75),(31,'Saint Roch','Puy-de-Dome','Rouge Doux','IGP',2013,0.75),(32,'Les Arenes','Cornas','Rouge Sec','AOC-AOP',2012,0.75),(33,'Wolfberger Gewurztraminer','Alsace','Blanc Doux','AOC-AOP',2013,0.75),(34,'Clos Capitoro','Ajaccio','Blanc Sec','AOC-AOP',2013,0.75),(35,'Pratavone','Ajaccio','Rose Doux','AOC-AOP',2013,0.75),(36,'U Cuventu','Sartene','Rouge Sec','AOC-AOP',2012,0.75),(37,'Saparale','Sartene','Rouge Doux','AOC-AOP',2010,1.5),(38,'Casabianca','Calvi','Rouge Doux','AOC-AOP',2013,0.75),(39,'Cantera','Saussignac','Blanc Doux','AOC-AOP',2011,0.75),(40,'Satellite','Sancerre','Blanc Sec','AOC-AOP',2012,1.5),(41,'La Comete','Sancerre','Rose Sec','AOC-AOP',2012,1.5),(42,'La Demoiselle','Sancerre','Rouge Sec','AOC-AOP',2011,0.75),(43,'Moet et Chandon Saran','Coteaux champenois','Blanc Sec','AOC-AOP',2011,0.75),(44,'Bouzy les Mignottes','Coteaux champenois','Rouge Sec','AOC-AOP',2012,1.5),(45,'Pinot-Franc','Coteaux champenois','Rose Sec','AOC-AOP',2011,0.75),(46,'Marcel Cabelier','Arbois','Rouge Sec','AOC-AOP',2012,0.75),(47,'Chateau-Chalon','Arbois','Blanc Sec','AOC-AOP',2010,0.75),(48,'Vin Jaune','Arbois','Rose Sec','AOC-AOP',2010,6),(49,'Les Echenoz','Cotes du Jura','Rouge Sec','AOC-AOP',2011,3),(50,'Bourdy Arlay Jura','Cotes du Jura','Blanc Sec','AOC-AOP',2011,0.75),(51,'Rasteau Rose','Cotes du Rhone','Rose Doux','AOC-AOP',2013,0.75),(52,'Hauts de Consolation','Collioure','Rose Doux','AOC-AOP',2013,0.75),(53,'Cabernet d\'Anjou','Anjou','Rose Doux','AOC-AOP',2012,0.75),(54,'Mas de la Serra','Banyuls','Rouge Doux','AOC-AOP',2010,0.75),(55,'Les Murets d\'Esprades','Banyuls','Rose Doux','AOC-AOP',2010,0.75),(56,'Domaine des Terrisses','Gaillac','Blanc Doux','AOC-AOP',2013,0.75),(57,'Mas Amiel Maury','Collioure','Blanc Doux','AOC-AOP',2013,0.75),(58,'Domaine des Girasols','Cotes du Rhone','Blanc Doux','AOC-AOP',2013,1.5),(59,'Maury Vol de Nuit','Collioure','Rouge Doux','AOC-AOP',2012,0.75),(60,'Saint Mont','Gers','Rouge Doux','IGP',2011,0.75),(61,'Ocean Rose','Atlantique','Rose Doux','IGP',2013,0.75),(62,'Tatoobu','Perigord','Rouge Doux','IGP',2013,0.75),(63,'Chateau Minuty','Cotes de Provence','Rose Sec','AOC-AOP',2013,1.5),(64,'Domaine Trevallon','Alpilles','Rouge Doux','IGP',2011,0.75),(65,'Vin De Paille','Arbois','Blanc Doux','AOC-AOP',2011,0.2),(66,'Domaine Mandrillon','Bourgogne','Rouge Sec','AOC-AOP',2010,3),(67,'Chateau de Passavant','Anjou','Rouge Sec','AOC-AOP',2010,3),(68,'Brumont Chateau Montus','Madiran','Rouge Sec','AOC-AOP',2010,12),(69,'Chateau de Piniaccia','Figari','Rouge Sec','AOC-AOP',2010,6),(70,'Chateau Yon Figeac','Yonne','Rouge Doux','IGP',2011,0.75),(71,'Chateau Monbousquet','Saint-Emilion grand cru','Rouge Sec','AOC-AOP',2010,6),(72,'Clos Lapeyre','Jurancon','Blanc Doux','AOC-AOP',2013,0.2);
/*!40000 ALTER TABLE `vin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumetrie`
--

DROP TABLE IF EXISTS `volumetrie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumetrie` (
  `id_vol` smallint(5) unsigned NOT NULL auto_increment,
  `volume` float NOT NULL,
  `nom_vol` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_vol`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumetrie`
--

LOCK TABLES `volumetrie` WRITE;
/*!40000 ALTER TABLE `volumetrie` DISABLE KEYS */;
INSERT INTO `volumetrie` VALUES (1,0.2,'piccolo'),(2,0.75,'bouteille'),(3,1.5,'magnum'),(4,3,'jeroboam'),(5,6,'mathusalem'),(6,12,'balthazar'),(7,15,'nabuchodonosor');
/*!40000 ALTER TABLE `volumetrie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 14:47:54
