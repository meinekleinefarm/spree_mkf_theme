Deface::Override.new(:virtual_path => 'spree/shared/_search',
                     :name => 'remove_select_box_from_search_form',
                     :remove => "erb[loud]:contains('select_tag')",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     },
                     :original => 'e8f14e0dca2192780916ebe264c88031d9f20b8c')
