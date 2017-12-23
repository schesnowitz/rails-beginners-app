$(document).ready(function() {
  
$('#template_one_portfolio_header_title').keyup(function() {
  $('#portfolio_header_title_show').html($(this).val());
  });

  $('#template_one_portfolio_header_text').keyup(function() {
  $('#portfolio_header_text_show').html($(this).val());
  });
});