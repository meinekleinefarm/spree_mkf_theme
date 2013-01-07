Deface::Override.new(:virtual_path => 'spree/shared/_header',
                     :name => 'remove_main_nav_bar_from_header',
                     :remove => "code[erb-loud]:contains('spree/shared/main_nav_bar')")
