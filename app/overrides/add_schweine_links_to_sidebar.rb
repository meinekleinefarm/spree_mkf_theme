Deface::Override.new(:virtual_path => 'spree/home/index',
                     :name => 'add_schweine_links_to_sidebar_on_home_page',
                     :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                     :partial => 'spree/schweine/sidebar')

Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'add_schweine_links_to_sidebar_on_products_page',
                    :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                    :partial => 'spree/schweine/sidebar')
