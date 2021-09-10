<?php
    ob_start();

    echo " Une erreur s'est produite!".$msg_erreur;

    $contenu = ob_get_clean();
    require('gabarit.php');