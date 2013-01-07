Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_login_links_to_main_nav_bar',
                     :insert_after => '#phone-number',
                     :partial => 'spree/shared/login_bar',
                     :sequence => {
                       :after => 'add_phone_number_to_main_nav_bar'
                     },
                     :original => '07c8fdfe7f3a93320e408e38770d334d42b6de91')
