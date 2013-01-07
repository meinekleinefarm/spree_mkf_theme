Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                    :name => 'surround_footer_content_with_container',
                    :surround_contents => 'footer#footer',
                    :erb => '<div class="container"><%= render_original %></div>')
