var mainFunc = function() {
  $('.carousel').carousel({
    interval: 2000
  });
  
  $('.dropdown-toggle').dropdown();
 
  $('.dropdown input, .dropdown label').click(function(e) {
    e.stopPropagation();
  });
};

$(document).ready();