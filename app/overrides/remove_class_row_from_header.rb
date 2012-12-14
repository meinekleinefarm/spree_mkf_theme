Deface::Override.new(:virtual_path => 'spree/shared/_header',
                     :name => 'remove_class_row_from_header',
                     :set_attributes => 'header',
                     :attributes => {:class => 'span16'})