Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_sidebar_to_product_page',
                     :insert_after => '[data-hook="product_show"]',
                     :partial => 'spree/products/sidebar')
