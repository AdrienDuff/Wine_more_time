<?php
try
{
$db = new PDO('mysql:host=localhost;dbname=bd_vin', 'bschuler', 'motdepasse');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
?>
