$(document).ready(function () {

  $("#loginButtonDropdown").click( function () {
    $(".pop-up-container").fadeIn(500);
    $(".pop-up-login").fadeIn(500);
  })

  $(".closeButtonPopUp").click(function () {
    $(".pop-up-container").fadeOut(500);
    $(".pop-up-login").fadeOut(500);
  })

  $(".pop-up-container").click(function () {
    $(".pop-up-container").fadeOut(500);
    $(".pop-up-login").fadeOut(500);
  })

})


