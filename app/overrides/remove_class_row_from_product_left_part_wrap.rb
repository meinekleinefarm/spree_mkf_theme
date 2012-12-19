Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'remove_class_row_from_product_left_part_wrap',
                     :remove_from_attributes => '[data-hook="product_left_part_wrap"]',
                     :attributes => {:class => 'row'})