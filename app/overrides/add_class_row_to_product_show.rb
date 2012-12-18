Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'add_class_row_to_product_show',
                    :set_attributes => '[data-hook="product_show"]',
                    :attributes => { :class => 'row'})
