Deface::Override.new(:virtual_path => 'spree/shared/_header',
                    :name => 'add_stoerer_to_header',
                    :insert_after => 'figure',
                    :partial => "spree/shared/header_stoerer",
                    :sequence => {:after => 'surround_header_content_with_container'})
