<!DOCTYPE html>
<html lang="fr">
  <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Blog Culinaire</title>

      <!-- bootstrap -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
      <!-- Custom CSS -->
      <link rel="stylesheet" href="./style/style.css">

  </head>
<body class="bg-transparent">

  <header class="py-3 border-bottom bg-warning bg-gradient border-dark">
      <div class="container d-flex flex-wrap justify-content-center mb-4">
        <a href="index.php" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
          <span class="fs-4">Mon blog.</span>
        </a>

        <ul class="nav nav-pills">
          <li class="nav-item"><a href="index.php" class="btn nav-link text-dark" aria-current="page">Accueil</a></li>
          <li class="nav-item"><a class="btn dropdown-toggle text-dark" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Recettes</a>
              <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  <li><a class="dropdown-item" href="index.php?category=Entrée">Entrées</a></li>
                  <li><a class="dropdown-item" href="index.php?category=Plat">Plats</a></li>
                  <li><a class="dropdown-item" href="index.php?category=Dessert">Desserts</a></li>
              </ul>
          </li>
          <li class="nav-item"><a href="#" class="btn nav-link text-dark">Contact</a></li>
        </ul>
      </div>
  </header>

