

<?php
                  $sqlQuery = 'SELECT * FROM `vmx_charger` order by id_prod desc limit 1;';
                  $products = $dbconn->prepare($sqlQuery);
                  $products->execute();
                  $mesproducts = $products->fetchAll();
                  foreach ($mesproducts as $product) {
                  ?>





<?php 
              if(isset($_SESSION['abonne']))
              {
                ?>
                <!-- ======= product Form ======= -->
                <div class="productheader text-center" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">PRODUCT</div>

<div class="container py-4 my-4 mx-auto d-flex flex-column productcontainer">
    <div class="header">
        <div class="row r1">
            <div class="col-md-9 abc" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">
                <h1>EV CHARGER VMX</h1>
            </div>
            <div class="col-md-3 text-right pqr"></div>
            
        </div>
    </div>
    <div class="container-body mt-4">
        <div class="row r3">
            <div class="col-md-5 p-0 klo">
                <ul>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRODUCT NAME : <?php echo $product['nom_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRICE : <?php echo $product['prix_prod']; ?>$</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">DESCRIPTION : <?php echo $product['desc_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">WATTAGE: <?php echo $product['wattage_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRODUCT DIMENSIONS : <?php echo $product['dimension_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">NORMAL DELIVERY : 4-5 Days</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">EXPRESS DELIVERY : 2-3 Days</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">COD Available (All Over Morocco)</li>
                </ul>
            </div>
            
           
            <div class="col-md-7 vans">
                <babylon model="http://localhost/wb/charger.glb" templates.main.params.fill-screen="true"></babylon></div>

              </div>
              
             

</div>
    <div class="footer d-flex flex-column mt-5">
        <div class="row r4">
            <div class="col-md-2 myt des"><a href="#">Description</a></div>
            <div class="col-md-2 myt "><button type="button" class="btn btn-outline-warning"><a href="#" data-bs-toggle="modal" data-bs-target="#modalProduct">BUY NOW</a></button></div>
        </div>
    </div>
</div>
</div>
            
                <?php
              }
              else
              {
                ?>

<!-- ======= product Form ======= -->
<div class="productheader text-center" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">PRODUCT</div>

<div class="container py-4 my-4 mx-auto d-flex flex-column productcontainer">
    <div class="header">
        <div class="row r1">
            <div class="col-md-9 abc" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">
                <h1>EV CHARGER VMX</h1>
            </div>
            <div class="col-md-3 text-right pqr"></div>
            
        </div>
    </div>
    <div class="container-body mt-4">
        <div class="row r3">
            <div class="col-md-5 p-0 klo">
                <ul>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRODUCT NAME : <?php echo $product['nom_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRICE : <?php echo $product['prix_prod']; ?>$</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">DESCRIPTION : <?php echo $product['desc_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">WARRANTY : 12 Months Warranty</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">PRODUCT DIMENSIONS : <?php echo $product['dimension_prod']; ?></li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">NORMAL DELIVERY : 4-5 Days</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">EXPRESS DELIVERY : 2-3 Days</li>
                    <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">COD Available (All Over Morocco)</li>
                </ul>
            </div>
            
            
            <div class="col-md-7 vans">
                <babylon model="http://localhost/wb/charger.glb" templates.main.params.fill-screen="true"></babylon></div>
            </div>
              
              

</div>
    <div class="footer d-flex flex-column mt-5">
        <div class="row r4">
            <div class="col-md-2 myt des"><a href="#">Description</a></div>
        <!-- button connexion-->
        <h2><a class="form-control-comment"  href="#" data-bs-toggle="modal" data-bs-target="#modalLogin">Sign-up to buy the product</a></h2>
        <!-- fin button connexion -->
          </div>
    </div>
</div>
</div>              <?php
              }

?>






<!-- Modal connexion-->
<div class="modal fade modalconnexion" id="modalProduct" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content modalinscription">
    <form action="index.php" method="post">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">EV CHARGER VMX</h1>
        <button type="button" class="btn-close modalinscription" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body"> 
      <main>
     <!-- Start DEMO HTML (Use the following code into your project)-->
<div class="shopping-cart-wrapper row">
  <table class="table is-fullwidth shopping-cart">
    <thead>
      <tr>
        <th><abbr title="Position"></abbr></th>
        <th></th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Total</th>
        <th></th>
      </tr>
    </thead>
  </table>
  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">$ 0</div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">$ 0</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">$ 0</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">$ 0</div>

      <div class="credit-card-info--form">
    <div class="input_container">
      <label for="password_field" class="input_label">Card holder full name :</label><br>
      <input id="password_field" class="input_field" type="text" name="input-name" title="Inpit title" placeholder="Enter your full name" >
    </div>
    <div class="input_container">
      <label for="password_field" class="input_label">Card Number :</label><br>
      <input id="password_field" class="input_field" type="number" name="input-name" title="Inpit title" placeholder="0000 0000 0000 0000" >
    </div>
    <div class="input_container">
      <label for="password_field" class="input_label"> CVV :</label>
      <div class="split">
      <input id="password_field" class="input_field" type="number" name="cvv" title="CVV" placeholder="CVV" >
    </div>
    </div>
  </div>
    </div>
  </div>
  
</div>
     <!-- END -->
 </main>
        
      </div>
      <div class="modal-footer text-center">
      
      <button style="text-decoration:none;" type="submit" class="btn btninscription" data-bs-toggle="modal" data-bs-target="#modalProductemail"><a href="#">Comfirmer Votre Demande</a></button>
      </div>
      </form>
    </div>
  </div>
</div>




<!-- Modal email receving message-->
<div class="modal fade modalconnexion" id="modalProductemail" data-bs-backdrop="static" data-bs-keyboard="true" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content modalinscription">
    <form action="index.php" method="post">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel">the operation is successfully done THANK YOU !</h1>
        <button type="button" class="btn-close modalinscription" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body"> 
            An Email containing further details was sent to your account Please check it out.
      </div>
      <div class="modal-footer">
      
      <button style="text-decoration:none;" class="btn btninscription"><a href="index.php">Home Page</a></button>
      </div>
      </form>
    </div>
  </div>
</div>

<?php
              }

?>
