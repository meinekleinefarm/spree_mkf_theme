Deface::Override.new(:virtual_path => 'spree/shared/_search',
                     :name => 'remove_submit_button_from_search_form',
                     :remove => "code[erb-loud]:contains('submit_tag')",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     },
                     :original => '6f93bdeb574c6958115df9e610169b19f31fc681')
