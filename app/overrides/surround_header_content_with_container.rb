Deface::Override.new(:virtual_path => 'spree/shared/_header',
                    :name => 'surround_header_content_with_container',
                    :surround_contents => 'header#header',
                    :erb => '<div class="container"><%= render_original %></div>',
                    :original => 'd1fc4156cbab1ac52f706094ef49c096c6cc99c6')
