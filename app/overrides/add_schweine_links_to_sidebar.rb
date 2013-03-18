Deface::Override.new(:virtual_path => 'spree/home/index',
                     :name => 'add_schweine_links_to_sidebar',
                     :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                     :partial => 'spree/schweine/sidebar')