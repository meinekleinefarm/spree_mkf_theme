Deface::Override.new(:virtual_path => 'spree/shared/_review',
                     :name => 'add_columns_class_to_review',
                     :set_attributes => 'div.review',
                     :attributes => {
                       :class => "review columns four <%= cycle('alpha', '', 'omega')%>"
                      })



