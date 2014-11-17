//= require store/respond
//= require store/enquire
$(function() {
  $('input[type="radio"]').addClass('radio');
  $('input[type="checkbox"]').addClass('checkbox');
});

$(document).ready(function() {
  $("#page img, .posts img, .post img").each(function() {
    // Let's put a caption if there is one
    $(this).wrap('<figure class="image"></figure>')
    if($(this).attr("alt") && $(this).attr("alt") !== 'REPLACE-WITH-ALT') {
      $(this).after('<figcaption>' + $(this).attr("alt") + '</figcaption>');
    }
  });
});