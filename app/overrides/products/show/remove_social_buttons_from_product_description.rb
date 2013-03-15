# Do nothing this overrides the original override from spree_social_products
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_social_buttons_from_product_description',
                     :remove => "[data-hook='product_left_part'] #social_nav",
                     :sequence => {
                       :after => 'add_social_buttons_to_products_show'
                     })



