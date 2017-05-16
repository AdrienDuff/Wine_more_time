  		ETAPE A SUIVRE POUR VISUALISER LE SITE

1. SOUS LINUX + mysql
 
 Il faut d'abord créer une database winemoretime dans mysql("CREATE DATABASE winemoretime;"
 Ensuite il faut éditer le fichier mysqlconnexion.php:
	. changer la machine hote et le port (mysql par défaut utilise le port 3306)
	. changer les valeurs de login et password en mettant ces identifiants mysql
Ensuite il faut insérer en base toutes les données. Deux choix sont possibles:
	. en utilisant le fichier insertion_bd.php
	. en utilisant le fichier db_dump sur la console mysql (plus facile sous LINUX)

- Dans le fichier insertion_bd.php, il faut changer tout les chemins d'acès au script sql fourni et
  et bien mettre tout les fichiers csv fournit dans le même répertoire.

Conseil: Dans public_html par exemple, copier/coller le fichier winemoretime fourni qui contient tout
	 les fichiers (php,css,csv et sql).
  Dans chaque script sql il faut changer /r/n par /n (format windows d'origine) et changer l'adresse des fichiers csv.
  Ensuite excecuter le fichier insertion_bd.php comme indiqué en commentaire dans le fichier.

Pour enfin avoir le projet sur le localhost, il faut suivre la procédure d'éxecution des fichiers php dans le cours de TechnoWeb sur le Moodle de l'Insa.
Une fois le dossier winemoretime copié dans public_html, on peut éxecuter l'ensemble à l'adresse suivante : localhost/~login/winemoretime/page_accueil.php

2. WINDOWS + MAMP
	
 Il faut d'abord télécharger MAMP sur le site officiel. Installer sur le disque c: et on aura alors automatiquement l'adresse suivante C:/MAMP/htdocs/.
 Insérer à cet endroit le fichier winemoretime fourni.
 Ici pas besoin de modifier le fichier insertion_bd.php, il suffira juste de le lancer comme indiquer dans les commentaire.
 En revanche il faut toujours éditer le fichier mysqlconnexion.php:
	. changer la machine hote et le port (mysql par défaut utilise le port 3306)
	. changer les valeurs de login et password en mettant ces identifiants mysql
 On peut aussi utiliser le fichier db_dump sur la console mysql de mamp.

 Ensuite, il faut lancer MAMP qui lancera ses serveurs APPACHE et MYSQL. Une fois que les deux sont lancés, il suffit de rentrer dans son navigateur (chrome par exemple)
 l'adresse suivante: http://127.0.0.1/winemoretime/page_accueil.php. Vous serez alors sur la page d'accueil et pourrez vous connecter au site et l'utiliser comme bon vous semble.
 
 NOTE: pour vérifier la bonne insertion des nouveaux membres, phpMyadmin offert par MAMP peut s'avérer utile.