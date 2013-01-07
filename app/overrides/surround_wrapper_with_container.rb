Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                    :name => 'surround_wrapper_with_container',
                    :surround_contents => '#wrapper',
                    :erb => '<div class="container"><%= render_original %></div>')
