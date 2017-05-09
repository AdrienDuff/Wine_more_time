
<?php include ('mysqlconnection.php'); ?>
<?php include('verif_session.php') ?><?php

/*$_SESSION['region'] = "Corse";
echo''.$_SESSION['region'];*/

if( filter_has_var( INPUT_GET , 'region' ) )
{
	$_SESSION['region'] = filter_input(  INPUT_GET , 'region' , FILTER_SANITIZE_STRING ); // adapte le filtre en fonction de tes besoins
}

echo '<meta http-equiv="refresh" content="0; URL=resultat.php">';
?>