require.config({
  //By default load any module IDs from js/lib
  baseUrl: 'assets/javascripts',
  //except, if the module ID starts with "app",
  //load it from the js/app directory. paths
  //config is relative to the baseUrl, and
  //never includes a ".js" extension since
  //the paths config could be for a directory.
  paths: {
    app: '.'
  }
});

// Start the main app logic.
require(['jquery-1.10.2.min', 'jquery.jcarousel.min', 'GPJCarousel'], function($, jcarousel, gp_carousel) {
//    function   ($,        canvas,   sub) {
      //jQuery, canvas and the app/sub module are all
      //loaded and can be used here now.

  gp_carousel.display();
});