<?php
/* Detruit la session et détruit toute les variables puis redirige vers la page d'accueil */
session_start();
session_unset();
session_destroy();
header('Location: page_accueil.php');
?>