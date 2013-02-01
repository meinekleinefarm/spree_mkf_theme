Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'move_reviews_below_product_description',
                     :insert_after => 'div[data-hook="product_right_part"]',
                     :cut => '#reviews') if defined? SpreeReviews == 'constant'

