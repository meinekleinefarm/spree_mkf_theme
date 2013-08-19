Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'add_class_to_variant_list',
                     :add_to_attributes => '#product-variants ul',
                     :attributes => {
                       :class => 'variant-list'
                     })

Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                    :name => 'add_four_column_class_to_variant_list',
                    :add_to_attributes => '#product-variants',
                    :attributes => {
                      :class => 'four'
                    })
Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                    :name => 'remove_five_column_class_to_variant_list',
                    :remove_from_attributes => '#product-variants',
                    :attributes => {
                      :class => 'five'
                    })





