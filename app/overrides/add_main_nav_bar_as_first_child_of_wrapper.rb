Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_main_nav_bar_as_first_child_of_wrapper',
                     :insert_top => '#wrapper',
                     :erb => '<%= render :partial => "spree/shared/main_nav_bar" if store_menu? %>',
                     :original => 'b783e7268d2ab196e65a32bc048cf6af2627dd06')
