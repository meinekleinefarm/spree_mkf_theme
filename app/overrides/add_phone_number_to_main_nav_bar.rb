Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_phone_number_to_main_nav_bar',
                     :insert_after => '#home-link',
                     :erb => '<li id="phone-number"><a href="tel:+493068080595">Schweine Hotline: 030/68080595</a></li>',
                     :original => '05c6495f8760e58eb68e2cce67433cf7f5299fa4')
