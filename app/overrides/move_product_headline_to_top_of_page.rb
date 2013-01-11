Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'move_product_headline_to_top_of_page',
                     :insert_before => '[data-hook="product_left_part"]',
                     :cut => 'h1.product-title')
