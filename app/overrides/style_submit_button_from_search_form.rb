Deface::Override.new(:virtual_path => 'spree/shared/_search',
                     :name => 'replace_submit_button_from_search_form',
                     :replace => "code[erb-loud]:contains('submit_tag')",
                     :erb => "<%= image_submit_tag('store/search-btn-lupe.png', :class => 'searchbox_submit') %>",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     },
                     :original => '6f93bdeb574c6958115df9e610169b19f31fc681')

Deface::Override.new(:virtual_path => 'spree/shared/_search',
                    :name => 'surround_search_form',
                    :surround => "code[erb-loud]:contains('form_tag')",
                    :closing_selector => "code[erb-silent]:contains('end')",
                    :erb => '<div id="searchwrapper"><%= render_original %></div>',
                    :sequence => {
                      :after => 'replace_submit_button_from_search_form'
                    })