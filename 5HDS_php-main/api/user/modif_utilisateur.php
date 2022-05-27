<?php
include('../index.php');

if( !empty($_POST['id']) && !empty($_POST['nom']) && !empty($_POST['prenom']) && !empty($_POST['roleUsers']) ){
    
    $requete = $pdo->prepare("UPDATE users SET nom = :nom, prenom = :prenom, roleUsers = :roleUsers, update_at = now() WHERE id = :id ;");
    $requete->bindParam(':id', $_POST['id']);
	$requete->bindParam(':nom', $_POST['nom']);
	$requete->bindParam(':prenom', $_POST['prenom']);
	$requete->bindParam(':roleUsers', $_POST['roleUsers']);

	if( $requete->execute() ){
		$success = true;
		$msg = "user modifié";
	} else {
		$msg = "erreur produite";
	}
} else {
    $msg = "Il manque des informations";
}

reponse_json($success, $data, $msg);
