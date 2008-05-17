
$(document).ready(function() {
  $('ul li:odd').addClass('odd');
  $('ul li:even').addClass('even');
});


$(document).ready(function() {
  $('.projects .new').hide();
  $('.projects a.add').click(function() {
    $('.projects a.add').hide();
    $('.projects .new').show();
  });

  $('.projects .new a.cancel').click(function() {
    $('.projects a.add').show();
    $('.projects .new').hide();
  });
});

