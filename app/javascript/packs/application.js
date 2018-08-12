import 'bootstrap';
// import AOS from 'aos';
// import 'aos/dist/aos.css';
import 'lazysizes';

import { scrollToCocktails } from '../components/hero';
import { scrollToTop } from '../components/footer';
// import { initUpdateNavbarOnScroll } from '../components/nav';

document.addEventListener('DOMContentLoaded', e => {
  // initUpdateNavbarOnScroll();
  scrollToCocktails();
  scrollToTop();
});
