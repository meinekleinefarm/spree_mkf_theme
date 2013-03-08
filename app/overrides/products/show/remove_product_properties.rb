Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_product_properties',
                     :remove => '[data-hook="product_properties"]',
                     :squence => {
                       :before => 'add_social_buttons_to_products_show'
                     })



