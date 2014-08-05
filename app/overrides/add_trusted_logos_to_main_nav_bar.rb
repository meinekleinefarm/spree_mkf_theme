Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_trusted_logos_to_main_nav_bar',
                     :insert_bottom => '#main-nav-bar',
                     :partial => 'spree/shared/trusted_logos')
