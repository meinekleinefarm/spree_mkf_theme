Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                     :name => 'remove_price_from_cart_form',
                     :remove => '#product-price')

Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
                    :name => 'remove_input_field_from_cart_form',
                    :replace => "erb[loud]:contains('number_field_tag')",
                    :erb => '<%= hidden_field_tag (@product.has_variants? ? :quantity : "variants[#{@product.master.id}]"),1, :class => :title, :value => 1%>')


