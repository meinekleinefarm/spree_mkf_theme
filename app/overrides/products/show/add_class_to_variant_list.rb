Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'add_class_to_variant_list',
                     :add_to_attributes => '#product-variants ul',
                     :attributes => {
                       :class => 'variant-list'
                     })




