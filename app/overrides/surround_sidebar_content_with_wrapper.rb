Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                    :name => 'surround_sidebar_content_with_wrapper',
                    :surround_contents => 'aside#sidebar',
                    :erb => '<div id="sidebar_wrapper"><%= render_original %></div>',
                    :sequence => {
                      :before => 'add_search_form_as_first_child_of_sidebar'
                    },
                    :original => 'd1fc4156cbab1ac52f706094ef49c096c6cc99c6')
