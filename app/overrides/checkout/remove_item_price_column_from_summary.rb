Deface::Override.new(:virtual_path => 'spree/shared/_order_details',
                     :name => 'remove_item_price_column_from_summary',
                     :remove => "td.price")
