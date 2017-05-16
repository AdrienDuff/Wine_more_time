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
    		<div class="elementbanniere"><?php echo''.$_SESSION['pseudo'] ?></div> <!-- On affiche la variable de session pseudo -->
    		<div class="elementbanniere">Choix</div>
    		<div class="elementbanniere"><a href="deconnexion.php"><input class="closebutton" type="submit" name="deconnexion" value="Déconnexion" /></a></div>
    	</div>

    <body>
    	<div class="texte"> 
			Vous voici sur la page qui va vous permettre de résoudre tout vos problème. C'est ici que vous allez pouvoir renseigner et sélectionner votre plat. 
Puis une fois cela fait, soumettez votre plat et notre base de données vous sortira le panel des vins qui conviennent à votre plat.
Sachant que vous êtes sensibles au prix du vin et de sa provenance, la page suivante vous permettra de choisir une région de préférence en cliquant dessus. Ainsi vous aurez un panel réduit des vins de cette région en accord avec votre plat.
Comme vous le verrez, les prix seront affichés dans l'ordre croissant et vous pourrez choisir quel vin répond à vos moyens.
Les prix affichés sont ceux que l'on trouve en général sur le marché mais peuvent varier malgré tout et sont donc à titre indicatif.
Maintenant à vous de jouer ! 
		</div>


		<form method="POST" action=""> <!-- On va fficher le choix des reps possible en récupérant la liste sur la base de donnés (requete) -->
				<div id="conteneurchoix">
					<div class="elementchoix"> 
						<span class="repaschoix">
							<select class="repas__select" name="repas">
<?php
$reponse = $bdd->query('SELECT nom_repas FROM repas');
while ($donnees = $reponse->fetch()) {
?>
							<option value="<?php echo $donnees['nom_repas']; ?>"><?php echo $donnees['nom_repas']; ?></option>
<?php	
}
$reponse->closeCursor();
?>
							</select>
						</span>
					</div>
					<div class="elementchoix"> 
					<input class="choicebutton" type="submit" name="Valider" value="Valider" />
					</div>
				</div>
		</form>  
<?php
/* On vérifie que l'on a bien choisi un repas puis on initialise les variables de session
   choix avec le nom du repas
   id repas avec son id dans la table
   region avec "" car on veut afficher dans un premier temps tout les vins peu importe la région*/
if (isset($_POST['Valider']) && !empty($_POST['repas'])) {
	$_SESSION['choix'] = $_POST['repas'];
	$repas =  $_POST['repas'];
	$req = $bdd->prepare('SELECT id_repas FROM repas WHERE nom_repas = :repas');
	$req->execute(array('repas' => $repas)); 

	$resultat = $req->fetch();
	$_SESSION['id_repas'] = $resultat['id_repas'];
	echo'<meta http-equiv="refresh" content="0; URL=resultat.php">'; // redirection vers la page de résultat
}

$_SESSION['region'] = "";
?>

    </body>

</html>
