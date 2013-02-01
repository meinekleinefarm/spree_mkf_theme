Deface::Override.new(:virtual_path => 'spree/social/_facebook',
                     :name => 'add_column_class_to_reviews',
                     :set_attributes => 'div.fb-like',
                     :attributes  => {
                       'data-font' => "tahoma",
                       'data-layout' => "button_count",
                       'data-width' => "124",
                       'data-href' => "<%= product_url(@product)%>"
                      })



