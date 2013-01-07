Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                    :name => 'surround_footer_content_with_container',
                    :surround_contents => 'footer#footer',
                    :erb => '<div class="container"><%= render_original %></div>',
                    :original => 'e13993674e3d5b3ab4a3e714cf172914bd0477fd')
