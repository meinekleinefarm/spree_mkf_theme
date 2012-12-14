Deface::Override.new(:virtual_path => 'spree/shared/_products',
                    :name => 'add_class_row_homepage_products',
                    :set_attributes => "ul#products",
                    :attributes => { :class => 'inline product-listing row'})
