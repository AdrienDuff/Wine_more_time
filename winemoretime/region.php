
<?php include ('mysqlconnection.php'); ?>
<?php include('verif_session.php') ?><?php

/* Grâce au js de map_france.js, on spécifie une valeur transportée par l'url de redirection 
 qui va nous permettre de changer la vaiable de session region 
 puis on retourne sur le page de resultat actualisé */

if( filter_has_var( INPUT_GET , 'region' ) )
{
	$_SESSION['region'] = filter_input(  INPUT_GET , 'region' , FILTER_SANITIZE_STRING ); 
}

echo '<meta http-equiv="refresh" content="0; URL=resultat.php">';
?>