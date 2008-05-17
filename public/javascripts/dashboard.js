
$(document).ready(function() {
  $('ul li:odd').addClass('odd');
  $('ul li:even').addClass('even');
});


$(document).ready(function() {
  $('.projects .new').hide();
  $('.projects .menu .open').click(function() {
    $('.projects .menu').hide();
    $('.projects .new').show();
  });

  $('.projects .new .cancel').click(function() {
    $('.projects .menu').show();
    $('.projects .new').hide();
  });

  $('.invoices .new').hide();
  $('.invoices .menu .open').click(function() {
    $('.invoices .menu').hide();
    $('.invoices .new').show();
  });

  $('.invoices .new .cancel').click(function() {
    $('.invoices .menu').show();
    $('.invoices .new').hide();
  });
});

