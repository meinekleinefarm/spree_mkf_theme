Deface::Override.new(:virtual_path => 'spree/shared/_search',
                     :name => 'add_id_search_form_to_head',
                     :replace => "erb[loud]:contains('form_tag')",
                     :erb => "<%= form_tag spree.products_path, :method => :get, :id => 'search_form' do %>",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     },
                     :original => 'd9140abe317d4b5ab678e95e84ef7fbb126c8be2')