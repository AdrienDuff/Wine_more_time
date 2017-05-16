<!DOCTYPE html>

<html>
<!-- On se connecte à la base de donnée -->
<?php include ('mysqlconnection.php'); ?>
    <head>
    	<title>Wine More Time</title>
        <meta charset="utf-8" />
        <link href="style.css" rel="stylesheet" type="text/css" media="all"/> 
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet" type="text/css">
    </head>

    <body>

		<div> <h1 class="title"> Wine more time </h1> </div>
  
		<div class="texte"> 
			Vous souhaitez organiser un repas digne de ce nom, vous avez pensé à tout dans les moindres détails et vous 
			êtes certain que le repas sera à la hauteur des attentes de vos convives mais... vous avez oublié une chose : le vin idéal qui
			mariera les saveurs de votre plat mitonné avec tant d'ardeur ! Quel vin allez-vous donc servir ? Notre site est justement là 
			pour vous faire gagner un temps précieux en répondant à cette question existentielle à votre place ! Pour cela, une seule chose 
			vous reste à faire : une fois identifié sur votre espace personnel, il vous suffit de sélectionner votre plat dans la base de données et
			le tour est joué ! Si ce n'est déjà fait, nous vous invitons bien évidemment à vous inscrire à l'aide du formulaire ci-dessous. 
		</div>
    
		<div class="mainacc"> 
    
			<form action="" method="POST"> 
				<fieldset class="login">  	
					<legend> Me connecter </legend> <!-- formulaire de connexion -->
					<table style="width:100%"> 
						<tr>
							<td> <label> Pseudo  </label> <input type="text" placeholder="Saisissez votre pseudo" name="pseudo" id="Pseudo1" />   </td> 
							<td> <label> Mot de passe </label> <input type="password" placeholder="Saisissez votre mot de passe" name="password" id="Password1" /> </td>
							<td> <input  class="loginbutton" type="submit" name="login" value="Login" /> </td>
						</tr>	
					</table>
				</fieldset>
<?php 			// Login

// Si l'on voulait plus de sécurité on peut hacher le mot de passe mais nous l'avons pas fait ici $pass_hache = sha1($_POST['password']);
if(isset($_POST['login']) && !empty($_POST['pseudo']) && !empty($_POST['password'])) {
// Vérification des identifiants
	$pseudo = $_POST['pseudo'];
	$password = $_POST['password'];

	$req = $bdd->prepare('SELECT id_client FROM client WHERE pseudo = :pseudo AND password = :password');
	$req->execute(array('pseudo' => $pseudo,'password' => $password)); 
	//$pass_hache));

	$resultat = $req->fetch();

	if (!$resultat)
	{
    	echo '<p>Mauvais identifiant ou mot de passe !</p>';/*on affiche mauvais identifiant ou mot de passe si un des 2 champs rentré n'est pas trouvé en base*/
	}
	else
	{
    	session_start();  /* on lance une session en initialisant la variable de session pseudo */
    	$_SESSION['pseudo'] = $pseudo;
    	echo '<div class="alert alert-dismissable alert-success"><button type="button" class="close" data-dismiss="alert">X</button> Vous etes bien logué, Redirection dans 3 secondes ! <meta http-equiv="refresh" content="3; URL=choix.php"></div>'; /* redirige vers la page de choix au bout de 3 secondes 																									en mettant un petit message d'alerte */
	}

}
else {
	echo '<p> Il manque des informations ! </p>'; // on affiche un message si tout les champs ne sont pas remplis
}
?>

				<fieldset class="inscription">  <!-- Formulaire d'inscription sur le site -->
					<legend> M'inscrire </legend>
					<table>
						<tr>
							<td style="width:50%"> Prénom </td> 
							<td style="width:100%" colspan="2"> <input type="text" placeholder="Saisissez votre prénom" name="prenom" id="Prenom"/> </td>
						</tr> 
						<tr>
							<td style="width:50%"> Nom </td> 
							<td style="width:100%" colspan="2"> <input type="text" placeholder="Saisissez votre nom" name="nom" id="Nom"/> </td>
						</tr>
						<tr>
							<td style="width:50%"> Adresse mail </td> 
							<td style="width:100%" colspan="2"> <input type="text" placeholder="Saisissez votre email" name="mail" id="Email"/> </td>
						</tr>
						<tr>
							<td style="width:50%"> Pseudo </td> 
							<td style="width:100%" colspan="2"> <input type="text" placeholder="Saisissez votre pseudo" name="pseudo1" id="Pseudo2"/> </td>
						</tr>
						<tr>
							<td style="width:50%"> Mot de passe </td> 
							<td style="width:100%" colspan="2"> <input type="password" placeholder="Saisisez votre password" name="password1" id="Password"/> </td>
						</tr>
						<tr>
							<td style="width:50%"> Confirmer mot de passe </td> 
							<td style="width:100%" colspan="2"> <input type="password" placeholder="Confirmation password" name="confirmpassword" id="confirmpwd"/> </td>
						</tr>
					</table> 
					</br>
				
					<input type="checkbox" name="check" value="Conditions" checked="checked"/> J'accepte les conditions générales du site 
					</br>
				
					<div> <input class="submitbutton" type="submit" name="valider" value="S'inscrire" /> </div>
				
				</fieldset>


<?php  // Inscription

// on verifie que tout les champs sont remplis
if(ISSET($_POST['valider']) && !empty($_POST['prenom']) && !empty($_POST['nom']) && !empty($_POST['mail']) && !empty($_POST['pseudo1']) && !empty($_POST['password1']) && !empty($_POST['confirmpassword'])) {

	$prenom = $_POST['prenom'];
	$nom = $_POST['nom'];
	$mail = $_POST['mail'];
	$pseudo1 = $_POST['pseudo1'];
	$password1 = $_POST['password1'];
	$confirmpassword = $_POST['confirmpassword'];

	if ($password1 != $confirmpassword) { // verification mot de passe
		echo '<p>mot de passe différent !!</p>'; // message si l'utilisateur s'inscrit avec deux mots de passe différent
	}
	else {
		$req1 = $bdd->prepare('SELECT id_client FROM client WHERE pseudo = :pseudo1'); // verifiaction du pseudo
		$req1->execute(array("pseudo1" => $pseudo1));
		$res1 = $req1->fetch();
		if (!$res1)
		{
    		$req2 = $bdd->prepare('SELECT id_client FROM client WHERE mail = :mail'); // verification du mail
    		$req2->execute(array("mail" => $mail));
    		$res2 = $req2->fetch();

    		if (!$res2) { // si tout est bon on insert dans client le nouveau membre avec les informations saisies
    			$req = $bdd->prepare('INSERT INTO client(prenom,nom,mail,pseudo,password) VALUES (:prenom, :nom, :mail, :pseudo , :password)');
				$req->execute(array("prenom" => $prenom, "nom" => $nom, "mail" => $mail, "pseudo" => $pseudo1, "password" => $password1));
				$res = $req->fetch();

				session_start();
    			$_SESSION['pseudo'] = $pseudo1;
    			echo '<div class="alert alert-dismissable alert-success"><button type="button" class="close" data-dismiss="alert">X</button> Vous etes bien inscit, Redirection dans 3 secondes ! <meta http-equiv="refresh" content="3; URL=choix.php"></div>'; /* Validation de l'inscription et 																													redirection vers la page de choix */
    		}
    		else {
    			echo '<p> adresse mail déja prise, veuillez changer </p>'; // message si l'adresse mail est deja prise par un autre membre
    		}
    		
		}
		else {
			echo '<p>pseudo déja utilisé, veuillez changer !!!</p>';// message si le pseudo est deja utilisé par un autre membre
		}
	}
}
else {
	echo '<p> Il manque des informations ! </p>';// message si tout les champs ne sont pas remplis
}
?>

			</form>
		</div>

		
    </body>

</html>