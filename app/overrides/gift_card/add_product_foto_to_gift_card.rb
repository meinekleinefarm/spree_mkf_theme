Deface::Override.new(:virtual_path => 'spree/gift_cards/new',
                     :name => 'add_product_foto_to_gift_card',
                     :insert_before => 'h1',
                     :partial => 'spree/gift_cards/photo')
