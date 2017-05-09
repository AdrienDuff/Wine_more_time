<?php include ('mysqlconnection.php'); ?>
<?php

/* executer requete 1 a 4 pui 5 a  9 */


$req1=file_get_contents("C:/MAMP/htdocs/winemoretime/region.sql");
$bdd->exec($req1);
$req2='';
$req2=file_get_contents("C:/MAMP/htdocs/winemoretime/cepage.sql");
$bdd->exec($req2);
$req3='';
$req3=file_get_contents("C:/MAMP/htdocs/winemoretime/appellation.sql");
$bdd->exec($req3);
$req4='';*/
$req4=file_get_contents("C:/MAMP/htdocs/winemoretime/composeA.sql");
$bdd->exec($req4);
$req5='';
$req5=file_get_contents("C:/MAMP/htdocs/winemoretime/volumetrie.sql");
$bdd->exec($req5);
$req6='';
$req6=file_get_contents("C:/MAMP/htdocs/winemoretime/vin.sql");
$bdd->exec($req6);
$req7='';
$req7=file_get_contents("C:/MAMP/htdocs/winemoretime/repas_vin.sql");
$bdd->exec($req7);
$req8='';
$req8=file_get_contents("C:/MAMP/htdocs/winemoretime/associe.sql");
$bdd->exec($req8);
$req9='';
$req9=file_get_contents("C:/MAMP/htdocs/winemoretime/app_millesime.sql");
$bdd->exec($req9);
?>