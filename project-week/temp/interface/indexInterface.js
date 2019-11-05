$(document).ready(function(){

  $('#main_button').on('click', function() {
    $.post("list_space.html", 'Thank you for listing your space!');
  });

});
