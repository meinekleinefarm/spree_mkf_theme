Deface::Override.new(:virtual_path => 'spree/shared/_social_buttons',
                     :name => 'remove_headline_from_social_share_links',
                     :remove => 'h6',
                     :sequence => {
                       :after => 'add_social_buttons_to_products_show'
                     })



