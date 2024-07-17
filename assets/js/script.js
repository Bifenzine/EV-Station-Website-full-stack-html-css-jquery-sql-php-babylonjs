

$(document).ready(function() {
    $(window).scroll(function() {
      if ($(this).scrollTop() > 200) {
        $('.back-to-top').fadeIn();
      } else {
        $('.back-to-top').fadeOut();
      }
    });
  
    $('.back-to-top').click(function(event) {
      event.preventDefault();
      $('html, body').animate({ scrollTop: 0 }, 800);
    });
      //nuber field required
    $('.input_field').required = true;
  });


//dark and light mode




  