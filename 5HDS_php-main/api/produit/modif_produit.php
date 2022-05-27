<?php
include('../index.php');

if( !empty($_POST['id']) && !empty($_POST['nom']) && !empty($_POST['description']) && !empty($_POST['price']) && !empty($_POST['stock'])){
   
    $requete = $pdo->prepare("UPDATE produit SET nom = :nom, description = :description, price = :price, stock = :stock, update_at = now() WHERE id = :id ;");
    $requete->bindParam(':id', $_POST['id']);
	$requete->bindParam(':nom', $_POST['nom']);
	$requete->bindParam(':description', $_POST['description']);
    $requete->bindParam(':price', $_POST['price']);
    $requete->bindParam(':stock', $_POST['stock']);

	if( $requete->execute() ){
		$success = true;
		$msg = "produit modifier";
	} else {
		$msg = "erreur produite";
	}
} else {
    $msg = "Il manque des informations";
}

reponse_json($success, $data, $msg);
