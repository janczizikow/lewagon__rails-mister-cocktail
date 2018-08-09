const scrollToCocktails = () => {
  const $cocktailsList = $('#cocktails');
  const $heroBtn = $('.js-hero-scroll');

  if ($cocktailsList && $heroBtn) {
    $heroBtn.on('click', e => {
      e.preventDefault();
      $('html, body').animate({
        scrollTop: $cocktailsList.offset().top
      });
      $heroBtn.blur();
    });
  }
};

export { scrollToCocktails };