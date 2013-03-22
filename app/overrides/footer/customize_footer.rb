Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                    :name => 'remove_left_part',
                    :remove => 'footer #footer-left')

Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                    :name => 'remove_right_part',
                    :remove => 'footer #footer-right')

Deface::Override.new(:virtual_path => 'spree/shared/_footer',
                    :name => 'add_link_list',
                    :insert_bottom => 'footer',
                    :partial => "spree/shared/footer_links",
                    :sequence => {
                      :before => 'surround_footer_content_with_container'
                    })

