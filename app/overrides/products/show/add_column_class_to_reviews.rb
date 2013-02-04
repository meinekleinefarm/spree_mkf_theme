Deface::Override.new(:virtual_path => 'spree/shared/_reviews',
                     :name => 'add_column_class_to_reviews',
                     :add_to_attributes => '#reviews',
                     :attributes  => {
                       :class => 'columns sixteen alpha omega'
                     })



