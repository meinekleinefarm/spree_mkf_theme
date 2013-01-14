Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'remove_update_cart_buttonsd',
                     :replace_contents => '[data-hook="cart_buttons"]',
                     :erb => "<%= button_tag :class => 'button checkout primary', :id => 'checkout-link', :name => 'checkout' do %><%= t(:checkout) %><% end %>")
