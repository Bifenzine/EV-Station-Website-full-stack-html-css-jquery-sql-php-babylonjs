
  //splide pour autoplay
  document.addEventListener('DOMContentLoaded', function () {
    new Splide('.splide', {
      type   : 'loop',
      drag   : 'free',
      focus  : 'center',
      arrows : false,
      pagination : false,
      gap: 'var(--spacing-md)',
      perPage: 3,
      autoScroll: {
        speed: 1,
      },
    }).mount( window.splide.Extensions );
  });
  //fin

//threejs background



