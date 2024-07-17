
<div class="newsheader text-center" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000"><h1>Latest Updates</h1></div>

<section id="gtco-blog" class="bg-grey">
    <div class="container">
        <div class="section-content">
            <div class="row">
                <!-- Blog -->
                <div class="col-md-12 blog-holder">
                    <div class="row">


<?php
                  $sqlQuery = 'SELECT `id_article`,`titre`,`auteur`,`date`, `image`,`description` FROM `articles` ORDER BY `id_article`DESC LIMIT 3;';
                  $articles = $dbconn->prepare($sqlQuery);
                  $articles->execute();
                  $mesarticles = $articles->fetchAll();
                  foreach ($mesarticles as $article) {
                  ?>

                        
                        

						 <!-- Blog Item -->
						 <div class="col-md-4 blog-item-wrapper">
                            <div class="blog-item">
                                <div class="blog-img">
                                    <a href="?idArticle=<?php echo $article['id_article']; ?>"><img src="assets/img/news/<?php echo $article['image']; ?>" alt=""></a>
                                </div>
                                <div class="blog-text">
                                    <div class="blog-tag" data-aos="fade-right"data-aos-duration="2000">
                                        <a href="?idArticle=<?php echo $article['id_article']; ?>"><h6><small><?php echo $article['auteur']; ?></small></h6></a>
                                    </div>
                                    <div class="blog-title" >
                                        <a href="?idArticle=<?php echo $article['id_article']; ?>"><h4><?php echo substr($article['titre'], 0, 40);  ?></h4></a>
                                    </div>
                                    <div class="blog-meta" >
                                        <p class="blog-date"><?php echo $article['date']; ?></p> 
                                        
                                    </div>
                                    <div class="blog-desc" >
                                        <p><?php echo $article['description']; ?></p>
                                    </div>
                                    
                                    <div class="blog-share-wrapper" data-aos="fade-right"data-aos-duration="2000">
                                        <a class="blog-share" href="google.com">
                                            <i class="fab fa-facebook-square"></i>
                                        </a>
                                        <a class="blog-share" href="twitter.com">
                                            <i class="fab fa-twitter-square"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End of Blog Item -->



<?php
                  }
                  ?>

</div>
</div>
</section>
