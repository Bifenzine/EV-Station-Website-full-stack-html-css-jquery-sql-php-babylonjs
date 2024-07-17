<?php 
try
{
	// On se connecte à MySQL
	$dbconn = new PDO('mysql:host=localhost;dbname=evstationvmx;charset=utf8', 'root', '');
}
catch(Exception $e)
{
	// En cas d'erreur, on affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}

?>
