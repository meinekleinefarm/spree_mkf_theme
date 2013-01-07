Deface::Override.new(:virtual_path => 'spree/shared/_header',
                     :name => 'remove_main_nav_bar_from_header',
                     :remove => "code[erb-loud]:contains('spree/shared/main_nav_bar')",
                     :original => 'c677aeceb61bcb99401bec1f95511a85fa3d07fb')
