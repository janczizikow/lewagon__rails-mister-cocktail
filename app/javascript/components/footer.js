const scrollToTop = () => {
  const $srollTopEl = $('.js-scroll-to-top');

  if ($srollTopEl) {
    $srollTopEl.on('click', e => {
      e.preventDefault();
      $('html, body').animate({ scrollTop: 0 });
    });
  }
};

export { scrollToTop };
