/*
$(document).ready(function() {
  $('ul li:odd').addClass('odd');
  $('ul li:even').addClass('even');
});
*/

$(document).ready(function() {
  $('.striped li:odd').addClass('odd');
  $('.striped li:even').addClass('even');
  $('.striped tbody tr:odd').addClass('odd');
  $('.striped tbody tr:even').addClass('even');
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

$(document).ready(function() {
  $('a#merge_time_logs').click(function() {
    $('form.merge').submit();
  });
});

// $('.timelogs table').find("input[@type$='checkbox']").each(function(){ this.checked = true; });
