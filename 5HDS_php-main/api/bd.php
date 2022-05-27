<?php
$hote = 'localhost';
$port = "";
$nom_bdd = 'api_5hds_gestion_stock';
$utilisateur = 'root';
$mot_de_passe ='';

try {
	//test de la connexion à la BD
    $pdo = new PDO('mysql:host='.$hote.';port='.$port.';dbname='.$nom_bdd, $utilisateur, $mot_de_passe);

} catch(Exception $e) {
		//Si la connexion plante, on arrête le chargement de la page et un message d'erreur est envoyé
		reponse_json($success, $data, 'Echec de la connexion à la BD');
    exit();

}