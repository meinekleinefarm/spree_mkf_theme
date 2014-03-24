//= require store/respond
//= require store/enquire
$(function() {
  $('input[type="radio"]').addClass('radio')
  enquire.register("screen and (min-width: 768px)", [{
    setup : function() {
      $('aside#sidebar').addClass('omega');
    },
    match : function() {
      // Push main content after the sidebar
      $('#content').after($('aside#sidebar'));
      $('aside#sidebar').addClass('omega');
    }
  }]).register("screen and (max-width: 767px)", [{
    // Push main content before the sidebar
    match : function() {
      $('#content').before($('aside#sidebar'));
      $('aside#sidebar').addClass('omega');
    }
  }]).listen();
});

$(document).ready(function() {
  $("#page img").each(function() {
    // Let's put a caption if there is one
    $(this).wrap('<figure class="image"></figure>')
    if($(this).attr("alt")) {
      $(this).after('<figcaption>' + $(this).attr("alt") + '</figcaption>');
    }
  });
});