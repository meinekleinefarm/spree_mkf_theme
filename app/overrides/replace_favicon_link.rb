Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'remove_submit_button_from_search_form',
                     :replace => "code[erb-loud]:contains('favicon_link_tag')",
                     :erb => "<%= favicon_link_tag image_path('store/favicon.png') %>",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     })
