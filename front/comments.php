<?php 

require_once(__DIR__ . '/../functions/connexion.php');     

              if(isset($_POST['id_abonnee']))
              {
                $id_abonnee=$_POST['id_abonnee'];
                $id_article=$_POST['idArticle'];
                $comment_message=$_POST['comment_message'];
                $sqlQuery = "INSERT INTO `comments` (`id_comment`, `contenu`, `id_abonnee`, `id_article`, `nbr_aime`, `date`) VALUES (NULL, '$comment_message', '$id_abonnee', '$id_article', '0', current_timestamp())";
                $comment = $dbconn->prepare($sqlQuery);
                
                $comment->execute();
              }

          ?>
         
         
         
            <!-- ======= Comments ======= -->
            <div class="comments ">
              
                <?php 
                include "commentsdynamic.php";
                ?>
             
            </div><!-- End Comments -->
              <?php 
              if(isset($_SESSION['abonne']))
              {
                ?>
                <!-- ======= Comments Form ======= -->
            <div class="row justify-content-center mt-5">

<div class="col-lg-12">
  <h5 class="comment-title">Share Your Opinion With Us</h5>
  <form action="#" method="post" id="form_comments">
  <div class="row">
    <div class="col-lg-12 mb-3">
      <input type="hidden" id="id_abonnee" name="id_abonnee" value="<?php echo $_SESSION['abonne']['id']?>">
      <input type="hidden" id="idArticle" name="idArticle" value="<?php echo $id_article?>">
    </div>

    <div class="col-12 mb-3">

      <textarea class="form-control" id="comment_message" name="comment_message" placeholder="Your space to express your opinion" cols="30" rows="10"></textarea>
    </div>
    <div class="col-12">
      <input type="submit" class="btn btn-primary form-control-search" value="Post comment" id="btn_form">
    </div>
  </div>
  </form>
</div>
</div><!-- End Comments Form -->
                <?php
                ?>
                <?php
              }
              
              
              else
              {
                ?>

                <h2><a class="form-control-comment"  href="#" data-bs-toggle="modal" data-bs-target="#modalLogin">Comment</a></h2>
              <?php
              }
   
  

       