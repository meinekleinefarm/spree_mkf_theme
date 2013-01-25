Deface::Override.new(:virtual_path => 'spree/orders/_adjustments',
                     :name => 'remove_empty_column_from_adjustments',
                     :remove => '#cart_adjustments td:last')
