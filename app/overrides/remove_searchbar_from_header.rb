Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                     :name => 'remove_searchbar_from_header',
                     :remove => "code[erb-loud]:contains('spree/shared/search')",
                     :original => '2361eded89274b5234da712ed05325ee1b8dadfa')
