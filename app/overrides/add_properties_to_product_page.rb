Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_properties_to_product_page',
                     :insert_after => "h1.product-title",
                     :partial => "spree/products/product_properties",
                     :sequence => {
                       :after => 'move_product_headline_to_top_of_page'
                     })