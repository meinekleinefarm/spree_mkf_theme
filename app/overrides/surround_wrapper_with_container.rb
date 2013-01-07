Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
                    :name => 'surround_wrapper_with_container',
                    :surround_contents => '#wrapper',
                    :erb => '<div class="container"><%= render_original %></div>',
                    :original => 'cd5d60ea50469782a6221b5ad15bc83e11b5bb32')
