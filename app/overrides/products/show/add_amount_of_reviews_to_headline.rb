Deface::Override.new(:virtual_path => 'spree/shared/_reviews',
                     :name => 'add_amount_of_reviews_to_headline',
                     :replace_contents => 'h6.product-section-title',
                     :erb => '<%= t(:reviews) %> (<%= @product.reviews.count %>)')



