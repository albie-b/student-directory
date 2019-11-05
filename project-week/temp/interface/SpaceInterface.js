$(document).ready(function(){
  var listspace = new ListSpace();

  $('#Send').on('click', function() {
    temp = ListSpace.new(name, cost, address, description)
    $.post("listSpace.html", temp );
  });

});
