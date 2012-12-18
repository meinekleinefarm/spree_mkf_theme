Deface::Override.new(:virtual_path => 'spree/shared/_products',
                    :name => 'add_class_row_homepage_products',
                    :add_to_attributes => "ul#products",
                    :attributes => { :class => 'row'})
