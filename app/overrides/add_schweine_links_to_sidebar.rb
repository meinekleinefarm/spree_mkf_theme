Deface::Override.new(:virtual_path => 'spree/home/index',
                     :name => 'add_fb_button_attributes',
                     :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                     :partial => 'spree/schweine/sidebar')