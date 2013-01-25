Deface::Override.new(:virtual_path => 'spree/orders/show',
                     :name => 'add_confirmation_text',
                     :insert_before => "fieldset#order_summary",
                     :partial => "spree/orders/summary")
