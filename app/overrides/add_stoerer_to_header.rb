Deface::Override.new(:virtual_path => 'spree/shared/_header',
                     :name => 'add_stoerer_to_header',
                     :insert_after => 'figure',
                     :erb => "<%= link_to(image_tag('/assets/store/gans.png', :id => 'stoerer'), 'http://www.meinekleinefarm.org/news/ganse-mit-geschicht')",
                     :sequence => {:after => 'surround_header_content_with_container'})
