(function() {
  jQuery(document).ready(function() {
    return jQuery("ul li a").click(function() {
      if (this.id === 'home') {
        return $("#slideshow").show();
      } else {
        return $("#slideshow").hide();
      }
    });
  });

}).call(this);
