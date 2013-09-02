Deface::Override.new(:virtual_path => 'spree/pages/show',
                     :name => 'add_id_to_page_wrapper',
                     :add_to_attributes => "div",
                     :attributes => {
                       :id => 'page',
                       :class => "eleven columns"
                    })

