Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_class_alpha_to_product_right_part',
                     :add_to_attributes => '[data-hook="product_right_part"]',
                     :attributes => {
                       :class => 'alpha'
                     })
Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'add_class_twelve_to_product_right_part',
                    :add_to_attributes => '[data-hook="product_right_part"]',
                    :attributes => {
                      :class => 'twelve'
                    })
Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'remove_class_omega_from_product_right_part',
                    :remove_from_attributes => '[data-hook="product_right_part"]',
                    :attributes => {
                      :class => 'omega'
                    })

Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_class_ten_from_product_right_part',
                     :remove_from_attributes => '[data-hook="product_right_part"]',
                     :attributes => {
                       :class => 'ten'
                     })




