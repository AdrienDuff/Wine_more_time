<?
/* Vérification qu'un utilisateur est bien connecté
  Si on ne l'est pas alors on est renvoyé à la page d'accueil */
session_start();
if(!isset($_SESSION['pseudo'])) {
	echo '<p> vous n\' êtes pas connecté, accés interdit ! </p> <meta http-equiv="refresh" content="1;page_accueil.php">';
}
?>