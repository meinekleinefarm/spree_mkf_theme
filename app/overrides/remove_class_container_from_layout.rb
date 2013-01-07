Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'remove_class_container_from_layout',
                     :remove_from_attributes => '.container',
                     :attributes => {:class => 'container'})
