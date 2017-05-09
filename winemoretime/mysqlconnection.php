<!-- <!DOCTYPE html>

<html>

<body>

	<TABLE BORDER="1">
		<CAPTION> liste des regions </CAPTION>
  			<tr>
 				<th> id_reg</th>
 				<th> nom_reg </th>
 				<th> pays </th>
  			</tr> -->
  
<?php
$host = "mysql:host=localhost:3307;dbname=winemoretime;charset=utf8";
$login = "root";
$password = "root";

try
{
	$bdd = new PDO($host,$login,$password,array(PDO::MYSQL_ATTR_LOCAL_INFILE => true));
}
catch (Exception $e)
{
	die('Erreur : ' . $e -> getMessage());
}

/*$req='';
$req=file_get_contents("C:/MAMP/htdocs/winemoretime/client.sql");
$bdd->exec($req);*/

/*$req='';
$req=file_get_contents("C:/MAMP/htdocs/winemoretime/region.sql");
$bdd->exec($req);

// On recupere tout le contenu de la table region
$reponse = $bdd->query('SELECT id_reg, nom_reg, pays FROM region');
  
// On affiche le resultat
while ($donnees = $reponse->fetch())
{
    //On affiche les données dans le tableau
    echo "</tr>";
    echo "<td> $donnees[id_reg] </td>";
    echo "<td> $donnees[nom_reg] </td>";
    echo "<td> $donnees[pays] </td>";
    echo "</tr>";
 
     
}
$reponse->closeCursor();*/


?>

	<!-- </table>
</body>
</html> -->