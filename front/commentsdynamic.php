

<?php
                  $id_article=$_GET['idArticle'];
                  $sqlQuery = "SELECT * FROM `comments`,`abonnee` WHERE `comments`.`id_abonnee`=`abonnee`.`id_abonnee` AND `comments`.`id_article`='$id_article'";
                  $comments = $dbconn->prepare($sqlQuery);
                  $comments->execute();
                  $comments = $comments->fetchAll();
                ?>
                    <h5 class="comment-title py-4"><?php echo count($comments)?> Comments Related To This Press Article</h5>

                <?php
                 foreach ($comments as $comment) 
                  {
                  ?>
                  
                      <div class="comment d-flex form-control">
                            <div class="flex-shrink-0">
                            <div class="avatar avatar-sm rounded-circle">
                                <img style="width:60px;" class="avatar-img" src="assets/img/avatar/<?php echo $comment['photo']?>" alt="" class="img-fluid">
                            </div>
                            </div>
                            <div class="flex-shrink-1 ms-2 ms-sm-3">
                            <div class="comment-meta d-flex">
                                <h6 class="me-2"><?php echo $comment['nom']?></h6>
                                <span class="text-muted">/<?php echo $comment['date']?></span>
                            </div>
                            <div class="comment-body">
                               <?php echo $comment['contenu']?>
                            </div>
                            </div>
              </div>
                <?php 
                  }
                  ?>
                  
