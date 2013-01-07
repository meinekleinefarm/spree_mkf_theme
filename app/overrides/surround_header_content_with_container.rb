Deface::Override.new(:virtual_path => 'spree/shared/_header',
                    :name => 'surround_header_content_with_container',
                    :surround_contents => 'header#header',
                    :erb => '<div class="container"><%= render_original %></div>')
