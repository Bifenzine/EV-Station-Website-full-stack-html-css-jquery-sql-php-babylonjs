var taxRate = 0.05;
var shipping = 15.0;
$(function() {
  var jsonData = [
    {
      title: "CHARGER VMX",
      price: 17000,
      quantity: 1,
      total: 17000
    },

  ];
  var html = "<tbody>";
  $.each(jsonData, function() {
    html +=
      '<tr class="cart-item">' +
      "        <td>" +
      '          <input type="checkbox" class="cart-item-check" checked />' +
      "        </td>" +
      "        <td>" +
      "          " +
      this.title +
      "        </td>" +
      "        <td>$" +
      this.price +
      "</td>" +
      "        <td>" +
      '          <input class="input is-primary cart-item-qty" style="width:100px" type="number" min="1" value="' +
      this.quantity +
      '" data-price="' +
      this.price +
      '">' +
      "        </td>" +
      '        <td class="cart-item-total">$' +
      this.total +
      "</td>" +
      "        <td>" +
      '          <a class="button is-small">Remove</a>' +
      "        </td>" +
      "      </tr>";
  });
  html += "</tbody>";
  $(".shopping-cart").append(html);
  
  recalculateCart();

  $(".cart-item-check").change(function() {
    recalculateCart();
  });

  $(".cart-item-qty").change(function() {
    var $this = $(this);
    var parent = $this.parent().parent();
    parent.find(".cart-item-check").prop("checked", "checked");
    var price = $this.attr("data-price");
    var quantity = $this.val();
    var total = price * quantity;
    parent.find(".cart-item-total").html(total.toFixed(2));
    recalculateCart();
  });

  $(".button").click(function() {
    var parent = $(this)
      .parent()
      .parent();
    parent.remove();
    recalculateCart();
  });
});
function recalculateCart() {
  var subTotal = 0;
  var grandTotal = 0;
  var tax = 0;
  var items = $(".cart-item");
  $.each(items, function() {
    var itemCheck = $(this).find(".cart-item-check");
    var itemQuantity = $(this).find(".cart-item-qty");
    if (itemCheck.prop("checked")) {
      var itemTotal = itemQuantity.val() * itemQuantity.attr("data-price");
      subTotal += itemTotal;
    }
  });
  if (subTotal > 0) {
    tax = subTotal * taxRate;
    grandTotal = subTotal + tax + shipping;
    $(".totals,.checkout").show();
  } else {
    $(".totals,.checkout").hide();
  }
  $("#cart-subtotal").html(subTotal.toFixed(2));
  $("#cart-total").html(grandTotal.toFixed(2));
  $("#cart-tax").html(tax.toFixed(2));
  $("#cart-shipping").html(shipping.toFixed(2));
}