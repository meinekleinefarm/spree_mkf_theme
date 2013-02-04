Deface::Override.new(:virtual_path => 'spree/shared/_review',
                     :name => 'make_review_title_a_headline',
                     :replace => '[itemprop="name"]',
                     :erb => '<h6 itemprop="name" class="itemName"><%= review.title %></h6>')

