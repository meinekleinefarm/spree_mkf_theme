Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'replace_favicon_link',
                     :replace => "code[erb-loud]:contains('favicon_link_tag')",
                     :erb => "<%= favicon_link_tag image_path('store/favicon.png') %>",
                     :sequence => {
                       :after => 'add_search_form_as_first_child_of_sidebar'
                     },
                     :original => '2b2e69dc9439fb20b16ad85788ad4ec57692db68')
