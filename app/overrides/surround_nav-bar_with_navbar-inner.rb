Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                     :name => 'surround_nav-bar_with_navbar-inner',
                     :surround => 'ul2#nav-bar',
                     :text => '<div class="navbar-inner"><a class="brand" href="/">Meine kleine Farm</a><%= render_original %></div>')
