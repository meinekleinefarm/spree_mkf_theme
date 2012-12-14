Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                    :name => 'add_nav_class_to_navbar',
                    :set_attributes => 'ul#nav-bar',
                    :attributes => { :class => 'inline nav'})
