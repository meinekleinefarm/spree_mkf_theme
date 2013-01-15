Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => 'remove_clear_item_button',
                     :remove => '[data-hook="cart_item_delete"]')
