Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                    :name => 'surround_header_content_with_container',
                    :surround_contents => 'aside#sidebar',
                    :erb => '<div id="sidebar_wrapper"><%= render_original %></div>',
                    :sequence => {
                      :before => 'add_search_form_as_first_child_of_sidebar'
                    })
