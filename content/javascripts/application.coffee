$(document).ready ->
  $("ul li a").click ->
    if this.id == 'home' then $("#slideshow").show() else $("#slideshow").hide()
