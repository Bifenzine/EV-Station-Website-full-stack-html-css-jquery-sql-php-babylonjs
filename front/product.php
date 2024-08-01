<?php
$sqlQuery = 'SELECT * FROM `vmx_charger` ORDER BY id_prod DESC LIMIT 1';
$stmt = $dbconn->prepare($sqlQuery);
$stmt->execute();
$product = $stmt->fetch(PDO::FETCH_ASSOC);

$isLoggedIn = isset($_SESSION['abonne']);

$productDetails = [
    'PRODUCT NAME' => $product['nom_prod'],
    'PRICE' => $product['prix_prod'] . '$',
    'DESCRIPTION' => $product['desc_prod'],
    'WATTAGE' => $product['wattage_prod'],
    'PRODUCT DIMENSIONS' => $product['dimension_prod'],
    'NORMAL DELIVERY' => '4-5 Days',
    'EXPRESS DELIVERY' => '2-3 Days',
    'COD' => 'Available (All Over Morocco)'
];
?>

<div class="productheader text-center" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">PRODUCT</div>

<div class="container py-4 my-4 mx-auto d-flex flex-column productcontainer">
    <div class="header">
        <div class="row r1">
            <div class="col-md-9 abc" data-aos="flip-down" data-aos-anchor-placement="top-center" data-aos-duration="1000">
                <h1>EV CHARGER VMX</h1>
            </div>
        </div>
    </div>

    <div class="container-body mt-4">
        <div class="row r3">
            <div class="col-md-5 p-0 klo">
                <ul>
                    <?php foreach ($productDetails as $label => $value): ?>
                        <li data-aos="flip-down" data-aos-duration="1000" data-aos-anchor-placement="bottom-bottom">
                            <?= htmlspecialchars($label) ?>: <?= htmlspecialchars($value) ?>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="col-md-7 vans">
                <babylon model="http://localhost/wb/concept_charging_station.glb" templates.main.params.fill-screen="true" light-intensity="1.5">
                </babylon>
            </div>
        </div>
    </div>

    <div class="footer d-flex flex-column mt-5">
        <div class="row r4">
            <div class="col-md-2 myt des"><a href="#">Description</a></div>
            <?php if ($isLoggedIn): ?>
                <div class="col-md-2 myt">
                    <button type="button" class="btn btn-outline-warning" data-bs-toggle="modal" data-bs-target="#modalProduct">BUY NOW</button>
                </div>
            <?php else: ?>
                <h2><a class="form-control-comment" href="#" data-bs-toggle="modal" data-bs-target="#modalLogin">Sign-up to buy the product</a></h2>
            <?php endif; ?>
        </div>
    </div>
</div>

<?php

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
