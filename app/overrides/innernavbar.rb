Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                     :name => 'innernavbar',
                     :surround => 'ul#nav-bar',
                     :text => '<div class="navbar-inner"><%= render_original %></div>')

