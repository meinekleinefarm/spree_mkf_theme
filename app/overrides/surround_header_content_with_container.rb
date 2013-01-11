Deface::Override.new(:virtual_path => 'spree/shared/_header',
                    :name => 'surround_header_content_with_container',
                    :surround_contents => 'header#header',
                    :erb => '<div class="container"><%= render_original %></div>',
                    :original => 'e52417595430da0b4961a298c71181484cd8beeb')
