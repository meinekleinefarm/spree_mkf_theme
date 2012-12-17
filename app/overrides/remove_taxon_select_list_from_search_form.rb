Deface::Override.new(:virtual_path => 'spree/shared/_search',
                     :name => 'remove_taxon_select_list_from_search_form',
                     :remove => "code[erb-loud]:contains('select_tag')")