Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'replace_class_three_with_span4',
                     :set_attributes => '[data-hook="products_list_item"]',
                     :attributes => {:class => 'columns alpha span4'}
                     )
