<?php
    require "controller.php";


    try {
        if(array_key_exists("id",$_GET)){
            return recette($_GET['id']);
        } elseif (array_key_exists("category",$_GET)) {
            return category($_GET['category']);
        }else{
            return accueil();
        }
    }
    catch(Exception $e) {
        $msg_erreur = $e->getMessage();
        require "vueErreur.php";
    }    

?>

