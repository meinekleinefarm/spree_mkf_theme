# Original Spree Homepage
Deface::Override.new(:virtual_path => 'spree/shared/_taxonomies',
                     :name => 'add_schweine_links_to_sidebar_on_home_page',
                     :insert_top => '#taxonomies',
                     :partial => 'spree/schweine/sidebar')

Deface::Override.new(:virtual_path => 'spree/pages/home',
                     :name => 'add_schweine_links_to_sidebar_on_cms_page',
                     :insert_top => '[data-hook="homepage_sidebar_navigation"]',
                     :partial => 'spree/schweine/sidebar')

# Blog page Spree Homepage
Deface::Override.new(:virtual_path => 'spree/blogs/shared/_sidebar',
                    :name => 'add_schweine_links_to_sidebar_on_blog_page',
                    :replace_contents => '#taxonomies',
                    :partial => 'spree/schweine/sidebar')


