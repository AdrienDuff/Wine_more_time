<?
session_start();
if(!isset($_SESSION['pseudo'])) {
	echo '<p> vous n\' êtes pas connecté, accés interdit ! </p> <meta http-equiv="refresh" content="0;page_accueil.php">';
}
?>