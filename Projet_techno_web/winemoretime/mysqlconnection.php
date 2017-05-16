
<?php
/* Définition des parametre de connexion à la base de donnée mysql*/
$host = "mysql:host=localhost:3307;dbname=winemoretime;charset=utf8"; /* c'est la machine host, ici c'est mon localhost 127.0.0.1 
                                                                         sur le port 3307(ou est situé ma base sql) et de la database(ici winemoretime)*/
$login = "root"; // login de la base
$password = "root"; // mot de passe du login

try
{
	$bdd = new PDO($host,$login,$password,array(PDO::MYSQL_ATTR_LOCAL_INFILE => true)); //connexion à la base en précissant qu'on peut charger des scripts sql en LOCAL
}
catch (Exception $e)
{
	die('Erreur : ' . $e -> getMessage());
}
?>
