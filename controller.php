<?php 
    require "modele.php";

    function accueil(){
        $resultat = getRecettes();
        require_once "vueAccueil.php";
    };

    function recette($id) {
        $resultat_sr = getSingleRecette($_GET['id']);
        require_once "vueRecette.php";
    };

    function category($category) {
        $resultat = getRecetteByCategory($_GET['category']);
        require_once "vueCategory.php";
    }