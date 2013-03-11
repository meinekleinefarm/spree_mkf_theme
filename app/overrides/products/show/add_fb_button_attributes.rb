Deface::Override.new(:virtual_path => 'spree/social/_facebook',
                     :name => 'add_fb_button_attributes',
                     :set_attributes => 'div.fb-like',
                     :original => '33d05f74332e9ac0b113f99d479b9280ae71c787',
                     :attributes  => {
                       'data-font' => "tahoma",
                       'data-layout' => "button_count",
                       'data-width' => "124",
                       'data-href' => "<%= product_url(@product)%>"
                      })



