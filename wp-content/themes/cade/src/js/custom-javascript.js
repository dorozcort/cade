/**
 * Slick Carousel
 *
 */

(function(factory) {
  'use strict';
  if (typeof define === 'function' && define.amd) {
    define(['jquery'], factory);
  } else if (typeof exports !== 'undefined') {
    module.exports = factory(require('jquery'));
  } else {
    factory(jQuery);
  }
})(function($) {
  $('.news-container-mobile').slick({
    centerMode: true,
    dots: true,
    centerPadding: '60px',
    slidesToShow: 1,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          dots: true,
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1,
        },
      },
    ],
  });

  // Divs Height

  let height = 0;

  $('.news-container-mobile')
    .find('.slick-slide')
    .each((index, el) => {
      var element = $(el);
      height = element.height() > height ? element.height() : height;

      element
        .children()
        .children('div')
        .css('height', height);
    });

  // Append social networks

  $('.social-networks-container').appendTo('.navbar-collapse');

  /*
   * Smooth scroll
   */

  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
      e.preventDefault();

      var ele = document.querySelector(this.getAttribute('href'));

      window.scroll({
        top: ele.offsetTop - 200, // could be negative value
        left: 0,
        behavior: 'smooth',
      });
    });
  });

  /*
   * Menu background
   */

  $(window).scroll(function() {
    if ($(window).scrollTop() > 50) {
      $('.header-menu').css('background', '#fff');
    } else {
      $('.header-menu').css('background', 'transparent');
    }
  });
});
