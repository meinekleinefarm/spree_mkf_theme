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

  $('<div id="icons" \
      <a href="https://www.facebook.com/meinekleinefarm" target="_blank" title="Follow us on facebook"> \
        <img src="/assets/icon-facebook.png" alt="facebook icon" ></img> \
      </a> \
      <a href="https://www.pinterest.com/meinekleinefarm/" target="_blank" title="Follow us on pinterest"> \
        <img src="/assets/icon-pinterest.png" alt="pinterest icon" ></img> \
      </a> \
      <a href="/newsletter" title="Sign up for our awesome newsletter"> \
        <img src="/assets/icon-mail.png" alt="newsletter icon" ></img> \
      </a> \
    </div>').insertAfter('figure#logo')
});