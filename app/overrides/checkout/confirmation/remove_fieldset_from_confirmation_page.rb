Deface::Override.new(:virtual_path => 'spree/orders/show',
                     :name => 'remove_summary_from_confirmation_page',
                     :remove => "fieldset#order_summary",
                     :sequence => {
                       :after => 'add_confirmation_text'
                     })
