Deface::Override.new(:virtual_path => 'spree/orders/_adjustments',
                     :name => 'reduce_spancol_for_order_adjustments',
                     :set_attributes => 'td[colspan="4"]',
                     :attributes => {
                       :colspan => 3
                     })


