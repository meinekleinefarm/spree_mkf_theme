Deface::Override.new(:virtual_path => 'spree/pages/show',
                     :name => 'add_id_to_page_wrapper',
                     :surround => "code[erb-loud]:contains('spree/shared/content')",
                     :text => "<div id='page'><%= render_original %></div>"
                    )
