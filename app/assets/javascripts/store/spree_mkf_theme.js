//= require store/enquire
$(function() {

  $('input[type="radio"]').addClass('radio')
  enquire.register("screen and (max-width: 767px)", [{
    setup : function() {
      $('#content').before($('aside#sidebar'));
    },
    match : function() {
      $('#content').before($('aside#sidebar'));
    }
  }]).register("screen and (min-width: 768px)", [{
    match : function() {
      $('#content').after($('aside#sidebar'));
    }
  }]).listen();
});