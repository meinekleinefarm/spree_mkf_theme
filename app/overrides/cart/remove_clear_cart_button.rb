Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'remove_clear_cart_button',
                     :remove => "#clear_cart_link code[erb-loud]:contains('submit_tag')")
