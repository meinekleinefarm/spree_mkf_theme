Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                    :name => 'surround_wrapper_with_container',
                    :surround_contents => '#wrapper',
                    :original => 'be5a5f4573d42670ee119c639775fa89bf34671c',
                    :erb => '<div class="container"><%= render_original %></div>')
