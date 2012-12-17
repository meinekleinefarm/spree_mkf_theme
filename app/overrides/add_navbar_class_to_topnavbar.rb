Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                     :name => 'add_navbar_class_to_topnavbar',
                     :set_attributes => '#top-nav-bar',
                     :attributes => { :class => 'navbar span16'})