


<div class="revhead text-center" data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="top-center"> What they say about us </div>
<div class="container-fluid allrev">

<?php
                  $sqlQuery = 'SELECT abonnee.nom , abonnee.photo, opinion.contenu FROM `abonnee` JOIN opinion ON abonnee.id_abonnee=opinion.id_abonnee ;';
                  $opinions = $dbconn->prepare($sqlQuery);
                  $opinions->execute();
                  $mesopinions = $opinions->fetchAll();
                  foreach ($mesopinions as $opinion) {
                  ?>

<div class="cardrev">
<div class="card-name"data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="top-center">Quote of the month</div>
<div class="quote"data-aos="flip-left"data-aos-duration="1000" data-aos-anchor-placement="top-center">
  <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 330 307" height="80" width="80">
    <path fill="currentColor" d="M302.258 176.221C320.678 176.221 329.889 185.432 329.889 203.853V278.764C329.889 297.185 320.678 306.395 302.258 306.395H231.031C212.61 306.395 203.399 297.185 203.399 278.764V203.853C203.399 160.871 207.902 123.415 216.908 91.4858C226.323 59.1472 244.539 30.902 271.556 6.75027C280.562 -1.02739 288.135 -2.05076 294.275 3.68014L321.906 29.4692C328.047 35.2001 326.614 42.1591 317.608 50.3461C303.69 62.6266 292.228 80.4334 283.223 103.766C274.626 126.69 270.328 150.842 270.328 176.221H302.258ZM99.629 176.221C118.05 176.221 127.26 185.432 127.26 203.853V278.764C127.26 297.185 118.05 306.395 99.629 306.395H28.402C9.98126 306.395 0.770874 297.185 0.770874 278.764V203.853C0.770874 160.871 5.27373 123.415 14.2794 91.4858C23.6945 59.1472 41.9106 30.902 68.9277 6.75027C77.9335 -1.02739 85.5064 -2.05076 91.6467 3.68014L119.278 29.4692C125.418 35.2001 123.985 42.1591 114.98 50.3461C101.062 62.6266 89.6 80.4334 80.5942 103.766C71.9979 126.69 67.6997 150.842 67.6997 176.221H99.629Z"></path>
  </svg>
</div>
<div class="revimg"></div>
<div class="body-text"data-aos="zoom-in"data-aos-duration="1000" data-aos-anchor-placement="top-center"><?php echo $opinion['contenu']; ?>.</div>
<div class="author" data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="top-center">- <?php echo $opinion['nom']; ?> <center> <span><img class="rounded-circle shadow-4-strong"data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="top-center" alt="avatar2" src="assets/img/avatar/<?php echo $opinion['photo']?>" height="70px" weight="70px" /></span></center> </div>
</div>





<?php 
                  }
                  ?>
</div>
</div>