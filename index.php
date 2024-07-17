<?php

session_start();
if(isset($_GET['logout']))
{
    session_destroy();
    unset($_SESSION['abonne']);

}
$erreurInscription="";
include "functions/connexion.php";
//connexion
if((isset($_POST['chmailConnexion']))&&(isset($_POST['chpwConnexion'])))
{
   $email=$_POST['chmailConnexion'];
   $pw=$_POST['chpwConnexion'];

   $sqlQuery = "SELECT * FROM `abonnee` WHERE `email`='$email' AND `mp`='$pw'";
                  $abonne = $dbconn->prepare($sqlQuery);
                  $abonne->execute();
                  $abonne = $abonne->fetch();
                if(!empty($abonne))
                {
                    $_SESSION['abonne']['id']=$abonne['id_abonnee'];
                  $_SESSION['abonne']['nom']=$abonne['nom'];
                  $_SESSION['abonne']['email']=$abonne['email'];
                  $_SESSION['abonne']['photo']=$abonne['photo'];

                  //$_SESSION['abonne']['times_of_charge_abonnee']=$abonne['times_of_charge_abonnee'];
                  //$_SESSION['abonne']['last_station_abonnee']=$abonne['last_station_abonnee'];
                  //$_SESSION['abonne']['car_model_abonnee']=$abonne['car_model_abonnee'];
                }
                else
                {
                    echo "erreur connexion";
                }
                  

}


//inscription
if((isset($_POST['chnom']))&&(isset($_POST['chmail']))&&(isset($_POST['chpw'])))
{

   $nom=$_POST['chnom'];
   $email=$_POST['chmail'];
   $pw=$_POST['chpw'];
   $avatar=$_FILES['chavatar'];

   $nomAvatar=time().'_'.$avatar['name'];
   $tmpnomAvatar=$avatar['tmp_name'];
   $sizeAvatar=$avatar['size'];
   $typeAvatar=$avatar['type'];
   $errorAvatar=$avatar['error'];

    

   if($sizeAvatar>100000)
   {
    $erreurInscription="Fichier volumineux Max 190Ko";
   }
   elseif(($typeAvatar!=='image/jpeg')&&($typeAvatar!=='image/png'))
   {
    $erreurInscription="l'avatar doit etre une photo JPG";
   }
   elseif($errorAvatar!==0)
   {
    $erreurInscription="probleme upload";
   }
   else
   {
    $sqlQuery = "INSERT INTO `abonnee` (`id_abonnee`, `nom`, `email`, `mp`, `photo`) VALUES (NULL, '$nom', '$email', '$pw', '$nomAvatar');";
                  $abonne = $dbconn->prepare($sqlQuery);
                  $abonne->execute();
                  $idInscription=$dbconn->lastInsertId();
    move_uploaded_file($tmpnomAvatar,'assets/img/avatar/'.$nomAvatar);


                $_SESSION['abonne']['id']=$idInscription;
                  $_SESSION['abonne']['nom']=$nom;
                  $_SESSION['abonne']['email']=$email;
                  $_SESSION['abonne']['photo']=$nomAvatar;
                  

   }

   echo $erreurInscription;
}




include 'front/head.html';
include 'front/header.php';
include 'front/navbar.php';
if(isset($_GET['idArticle']))
{
    include 'front/newsview.php';
    ?>
    <div class="container p-5" id="contenu_comment">
    <?php
    include 'front/comments.php';
    
    ?>
    </div>
    <?php
}
else
{
    include 'front/caroussel.php';

    
    include 'front/quote.php';
    include 'front/howtocharge.php';
    include 'front/news.php';
    

    include 'front/marquee.php';
    include 'front/reviews.php';
    include 'front/product.php';
    include 'front/localisationmap.php';
}

include 'front/footer.php';

?>

<!--
include 'front/head.html';
include 'front/navbar.php';
include 'front/caroussel.php';
include 'front/howtocharge.php';
include 'front/news.php';
include 'front/quote.php';

include 'front/marquee.php';
include 'front/reviews.php';
include 'front/product.php';


include 'front/footer.php';

