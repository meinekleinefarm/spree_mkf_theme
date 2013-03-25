Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_six_class_from_product_left_part',
                     :remove_from_attributes => '[data-hook="product_left_part"]',
                     :attributes => {
                       :class => 'six '
                     })

Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'add_eight_class_from_product_left_part',
                    :add_to_attributes => '[data-hook="product_left_part"]',
                    :attributes => {
                      :class => 'eight'
                    })

Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'move_cart_form_next_to_image',
                    :insert_after => '[data-hook="product_left_part"]',
                    :cut => "#cart-form")

Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'add_columns_to_cart_form',
                    :add_to_attributes => '#cart-form',
                    :attributes => {
                      :class => "four columns omega"
                    })