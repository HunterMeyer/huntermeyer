$(document).ready(function() {
  const navbar = $('#navbar');
  const navbarHeight = navbar.height();
  const splashHeight = $('#splash').height();
  const navbarVisibileAt = splashHeight - navbarHeight;
  if (splashHeight) {
    navbar.hide();
    $(window).scroll(function() {
      if ($(window).scrollTop() >= navbarVisibileAt) {
        navbar.show();
      } else {
        navbar.hide();
      }
    });
  }
});
