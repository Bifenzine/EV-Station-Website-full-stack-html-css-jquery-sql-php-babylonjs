<!--comencer navbar-->

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid position-relative">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse allnav" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 cursor-scale small">
        <a class="navbar-brand cursor-scale small evstation" data-aos="fade-right" data-aos-duration="1000" href="index.php"><img src="assets/img/logo/evstation.png" width="200" alt=""></a>

        <li class="nav-item link" data-aos="flip-up" data-aos-duration="1000">
          <a class="nav-link" aria-current="page" href="index.php">HOME</a>
        </li>
        <li class="nav-item link" data-aos="flip-up" data-aos-duration="1000">
          <a class="nav-link" href="#">NEWS</a>
        </li>
        <li class="nav-item dropdown link" data-aos="flip-up" data-aos-duration="1000">
          <a class="nav-link dropdown-toggle" href="front/product.php" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            PRODUCTS
          </a>
          <ul class="dropdown-menu">
            <li class="ev"><center><b>EV CHARGER</b></center></li>
            <li><a class="dropdown-item evs" href="front/product.php">EVS CHARGER</a></li>
          </ul>
        </li>
        <li class="nav-item link">
          <a class="nav-link" href="aboutus.html" data-aos="flip-up" data-aos-duration="1000">ABOUT US</a>
        </li>
      </ul>
      <form class="d-flex spsearch" role="search">
        <input class="form-control me-2 insearch" id="search" type="search" placeholder="Search" aria-label="Search">
        <div id="display"></div>
        <button class="btn btn-outline-success form-control-search bi bi-search" type="submit"></button>
      </form>
      
      <div class="position-relative">
        <?php
        if(isset($_SESSION['abonne']))
        {
        ?>
          <a href="#" class="mx-2 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img style="width:40px; color:green;" src="assets/img/avatar/<?php echo $_SESSION['abonne']['photo']?>" class="photo_profil rounded-circle"/>
          </a>
          <ul class="dropdown-menu dropdown-menu-end position-absolute">
            <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalProfile">Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="index.php?logout">Log out</a></li>
          </ul>
        <?php
        }
        else
        {
        ?>
          <a href="#" class="mx-2 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <span style="font-size: 30px;" class="bi bi-person"></span>
          </a>
          <ul class="dropdown-menu dropdown-menu-end position-absolute">
            <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalLogin">Log in</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalInscription">Sign up</a></li>
          </ul>
        <?php
        }
        ?>
      </div>
    </div>
  </div>
</nav>

<!-- Modal connexion-->
<div class="modal fade modalconnexion" id="modalLogin" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content modalinscription">
      <form action="index.php" method="post">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Identification</h1>
          <button type="button" class="btn-close modalinscription" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body"> 
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" name="chmailConnexion" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Mot de passe</label>
            <input type="password" name="chpwConnexion" class="form-control" id="exampleInputPassword1" required>
          </div>
        </div>
        <div class="modal-footer">
          <button style="text-decoration:none;" class="btn btninscription" data-bs-toggle="modal" data-bs-target="#modalInscription"><a href="#">Sign in</a></button>
          <button type="submit" class="btn btninscription">Log in</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal inscription-->
<div class="modal fade" id="modalInscription" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content modalinscription">
      <div class="alert alert-danger d-none" id="msgErrorInscription" role="alert">
      </div>
      <form action="index.php" method="post" enctype="multipart/form-data">
        <div class="modal-header modalinscription">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">Sign up form</h1>
          <button type="button" class="btn-close modalinscription" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <input type="hidden" id="messageErreurInscription" value="<?php echo $erreurInscription?>"/>
          <div class="mb-3">
            <label for="chnom" class="form-label">Name And Email</label>
            <input type="text" name="chnom" class="form-control sus" id="chnom" required>
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input type="email" name="chmail" class="form-control sus" id="chmail" required>
          </div>
          <div class="mb-3">
            <label for="chpw" class="form-label">Password</label>
            <input type="password" name="chpw" class="form-control sus" id="chpw" required>
          </div>
          <div class="mb-3">
            <label for="chpw2" class="form-label">Confirm Password</label>
            <input type="password" name="chpw2" class="form-control sus" id="chpw2" required>
          </div>
          <div class="mb-3">
            <label for="avatar" class="form-label">Importer your Image</label>
            <input type="file" name="chavatar" class="form-control" id="chavatar" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btninscription">Sign up</button>
        </div>
      </form>
    </div>
  </div>
</div>

<?php
$sqlQuery = 'SELECT `id_abonnee`,`last_station_abonnee`,`times_of_charge_abonnee`,`car_model_abonnee` FROM `abonnee` where id_abonnee=11;';
$profile = $dbconn->prepare($sqlQuery);
$profile->execute();
$mesprofile = $profile->fetchAll();
foreach ($mesprofile as $profil) {
?>

<!-- Modal profile-->
<div class="modal fade modalconnexion" id="modalProfile" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content modalinscription">
      <form action="index.php" method="post">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel"><img style="width:70px;" src="assets/img/avatar/<?php echo $_SESSION['abonne']['photo']?>" alt="" srcset=""><?php echo $_SESSION['abonne']['nom']?></h1>
          <button type="button" class="btn-close modalinscription" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body"> 
          <hr> 
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email : <?php echo $_SESSION['abonne']['email']?></label>
            <div id="emailHelp" class="form-text"></div>
          </div>
          <hr> 
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Car Model : <?php echo $profil['car_model_abonnee']?></label>
            <div id="emailHelp" class="form-text"></div>
          </div>
          <hr>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Number of charge : <?php echo $profil['times_of_charge_abonnee']?></label>
          </div>
          <hr>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Last Station : <?php echo $profil['last_station_abonnee']?></label>
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btninscription">Home Page<a href="index.php"></a></button>
        </div>
      </form>
    </div>
  </div>
</div>

<?php
}
?>