# Original Spree Homepage
Deface::Override.new(:virtual_path => 'spree/home/index',
                     :name => 'add_schweine_links_to_sidebar_on_home_page',
                     :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                     :partial => 'spree/schweine/sidebar')


# Spree Essential CMS Hompage
Deface::Override.new(:virtual_path => 'spree/pages/home',
                    :name => 'add_schweine_links_to_sidebar_on_home_page',
                    :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                    :partial => 'spree/schweine/sidebar')

# Spree Products index
Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'add_schweine_links_to_sidebar_on_products_page',
                    :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                    :partial => 'spree/schweine/sidebar')

# Spree Products show
Deface::Override.new(:virtual_path => 'spree/products/show',
                    :name => 'add_schweine_links_to_sidebar_on_product_page',
                    :insert_bottom => '[data-hook="homepage_sidebar_navigation"]',
                    :partial => 'spree/schweine/sidebar',
                    :sequence => {
                      :after => 'add_sidebar_to_product_page'
                    })
