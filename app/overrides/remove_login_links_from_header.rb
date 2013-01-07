Deface::Override.new(:virtual_path => 'spree/shared/_nav_bar',
                     :name => 'remove_login_links_from_header',
                     :remove => "code[erb-loud]:contains('spree/shared/login_bar')",
                     :sequence => {
                       :after => 'auth_shared_login_bar'
                     })



