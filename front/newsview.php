<?php
                  $idArticle=$_GET['idArticle'];
                  $sqlQuery = "SELECT `id_article`,`contenu`,`titre`,`date`,`image`,`link_article`,`auteur` FROM `articles` where `id_article`=$idArticle;";
                  $articles = $dbconn->prepare($sqlQuery);
                  $articles->execute();
                  
                  $mesarticles = $articles->fetchAll();
                  foreach ($mesarticles as $article) {
                  ?>

<section class="bg0 p-t-52 p-b-20 blogcontent">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12 p-b-80">
					<div class="p-r-45 p-r-0-lg">
						<!--  -->
						<div class="wrap-pic-w how-pos5-parent text-center">
							<img src="assets/img/news/<?php echo $article['image']; ?>" alt="IMG-BLOG">
							
							
						</div>

						<div class="p-t-32 blogauteur">
							<span class="flex-w flex-m stext-111 cl2 p-b-19 headblog">
								<span>
									<span class="cl4">By :</span> <?php echo $article['auteur']; ?>  
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>

								<span class="headblog">
                <?php echo $article['date']; ?>
									<span class="cl12 m-l-4 m-r-6">|</span>
								</span>

								

								<span class="headblog">
                 Comments
								</span>
							</span>

							<h4 class="ltext-109 cl2 p-b-28 titreblog">
              <?php echo $article['titre']; ?>
							</h4>

							<p class="stext-117 cl6 p-b-26 blogcontenu" >
              <?php echo $article['contenu']; ?>
							</p>

							
						</div>

						<div class="flex-w flex-t p-t-16 blogtags" >
							<span class="size-216 stext-116 cl8 p-t-4">
							<button class="btnarticle"><a href="<?php echo $article['link_article']; ?>">Read full Article</a>
  								
								</button>

					  
              
							</span>

							
						</div>

						<!--  -->
            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>	

          
            <?php 
                  }
                ?>

                	<!-- Content page -->
	