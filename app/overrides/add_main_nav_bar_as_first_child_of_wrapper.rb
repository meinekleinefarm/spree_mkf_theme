Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                     :name => 'add_main_nav_bar_as_first_child_of_wrapper',
                     :insert_top => '#wrapper',
                     :original => '5fbed3a4bb80c5dfc7688721d6d056d6dc6f932b',
                     :erb => '<%= render :partial => "spree/shared/main_nav_bar" if store_menu? %>')
