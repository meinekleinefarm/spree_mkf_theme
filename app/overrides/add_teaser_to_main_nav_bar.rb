Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_teaser_to_main_nav_bar',
                     :insert_after => 'nav',
                     :erb => '<%= yield :teaser %>')
