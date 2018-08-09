// https://css-tricks.com/debouncing-throttling-explained-examples/
import throttle from 'lodash.throttle';

const initUpdateNavbarOnScroll = () => {
  const nav = document.querySelector('.js-nav');
  const fakeBg = document.querySelector('.nav-fake-bg');

  const srcolledPastHero = () => {
    if (window.scrollY >= nav.offsetHeight  ) {
      nav.classList.add('nav--scrolled');
    } else {
      nav.classList.remove('nav--scrolled');
    }
  }

  if (nav) {
    $(window).on('scroll', throttle(srcolledPastHero, 200));
  }
};

export { initUpdateNavbarOnScroll };
