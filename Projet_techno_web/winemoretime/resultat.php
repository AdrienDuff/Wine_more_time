<!DOCTYPE html>
<!-- connexion à la base + verification de session -->
<?php include ('mysqlconnection.php'); ?>
<?php include('verif_session.php') ?>
<html>

    <head>
    	<title>Wine More Time - Choix</title>
        <meta charset="utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" media="all"/> 
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet" type="text/css">
    </head>
    	<div> <h1 class="title"> Wine more time </h1> </div>

    	<div id="conteneurbanniere">
    		<div class="elementbanniere"><?php echo''.$_SESSION['pseudo']; ?></div> <!-- On affiche la variable de session pseudo -->
    		<div class="elementbanniere"><?php echo ''.$_SESSION['id_repas'].'-'.$_SESSION['choix']; ?></div> <!-- On affiche la variable de session choix correspondant au repas et l'id du repas -->
    		<div class="elementbanniere"><a href="deconnexion.php"><input class="closebutton" type="submit" name="deconnexion" value="Déconnexion" /></a></div>
        </div>

    <body>
        <div id="conteneurcarte">
            <div class="cartefr">
                <script src="cmap/map_france.js"></script> <!-- Excecution du script pour afficher la carte cliquable -->
                <script>francefree();</script>

            </div>
         
            <div class="BD">
                <TABLE BORDER="1" name="tableauBD">
                <CAPTION> <strong>liste des vins (<?php echo''.$_SESSION['region']; ?>)</strong> </CAPTION>
                <tr>
                    <th> nom du vin</th>
                    <th> appellation </th>
                    <th> couleur </th>
                    <th> millésime </th>
                </tr> 
                <?php
                $region = $_SESSION['region'];
                // On recupere les vins associés au repas et à la region voulue
                if ($region != "") {
                $monrepas = $_SESSION['id_repas'];
                $reponse = $bdd->query('SELECT nom_vin,app,couleur,date FROM vin JOIN associe ON associe.id_repas = "'.$monrepas.'" AND associe.id_vin = vin.id_vin JOIN appellation1 ON appellation1.nom_app = vin.app WHERE appellation1.region_app = "'.$region.'"');
                $reponse ->fetch();
                // On affiche le resultat
                while ($donnees = $reponse->fetch()) {
                     //On affiche les données dans le tableau
                    echo "</tr>";
                    echo "<td> $donnees[nom_vin] </td>";
                    echo "<td> $donnees[app] </td>";
                    echo "<td> $donnees[couleur] </td>";
                    echo "<td> $donnees[date] </td>";
                    echo "</tr>";
                     
                }
                $reponse->closeCursor();
                } else {
                $monrepas = $_SESSION['id_repas'];
                $reponse = $bdd->query('SELECT nom_vin,app,couleur,date FROM vin JOIN associe ON associe.id_repas = "'.$monrepas.'" AND associe.id_vin = vin.id_vin');
                $reponse ->fetch(); 
                    // On affiche le resultat
                while ($donnees = $reponse->fetch()) {
                     //On affiche les données dans le tableau
                    echo "</tr>";
                    echo "<td> $donnees[nom_vin] </td>";
                    echo "<td> $donnees[app] </td>";
                    echo "<td> $donnees[couleur] </td>";
                    echo "<td> $donnees[date] </td>";
                    echo "</tr>";
     
                }
                $reponse->closeCursor();
                }
                ?>
                </table>
                
            </div>  
        </div>

        <section class="explication">
            
                Vous pouvez sélectioner une région sur la carte de France ci-dessus pour obtenir le panel de vin de cette région pour votre plat. Si aucun vin appartient à la région choisie nous vous raffichons la liste de tout les vins. La région est indiqué entre parenthèses.
                Si vous désirez lancer une nouvelle recherche, appuyez sur le bouton correspondant.
                Nous espérons que les résultats vous conviennent et nous vous souhaitons à bientôt et bonne dégustation !! 
            
        </section>

        <form method="POST" action=""><div class="search"><input class="searchbutton" type="submit" name="newsearch" value="Nouvelle recherche" /></div></form>

<?php
if (isset($_POST['newsearch'])) {
    echo '<meta http-equiv="refresh" content="0; URL=choix.php">'; // redirection vers la page de choix si on clique sur nouvelle recherche
}
?>        
    </body>

</html>