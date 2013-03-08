# Do nothing this overrides the original override from spree_social_products
Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_social_buttons_to_products_show',
                     :remove => "code[erb-loud]:contains('social_buttons')")



