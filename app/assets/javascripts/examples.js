$(document).ready(function () {
  $(document).on('keydown', function (e) {
    if(e.which == '39'){
      var href = $('.next-button').attr('href');
      window.location.href = href;
    }
  });
});
