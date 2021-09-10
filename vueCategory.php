<?php
    ob_start();
        foreach ($resultat as $recette) {
    ?>
        <div class="border-bottom border-dark mb-5 bg-white">
            <a href="index.php?id=<?php echo $recette['rec_id'] ?>" class="text-decoration-none text-dark">
                <h1>
                    <?php echo $recette['rec_nom'] ?>
                </h1>
                <p class="ms-5">
                    <?php echo $recette['rec_resume'] ?>
                </p>
                <div class="container">
                    <div class="row justify-content-end">
                        <p class="block col-10 text-end">
                            Nb commentaires (
                            <?php echo $recette['COUNT(com_id)'] ?>
                            )
                        </p>
                    </div>
                </div>
            </a>
        </div>

        <?php
        }
    $contenu = ob_get_clean();
    require('gabarit.php');
    ?>