Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                     :name => 'reduce_spancol_for_order_summary',
                     :set_attributes => 'tr.total td[colspan="4"]',
                     :attributes => {
                       :colspan => 3
                     })


