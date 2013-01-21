Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'remove_clear_cart_button',
                     :replace_contents => "p#clearss_cart_link",
                     :erb => "<%= link_to t(:continue_shopping), products_path, :class => 'continue button gray' %>")
