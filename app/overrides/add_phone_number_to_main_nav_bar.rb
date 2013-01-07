Deface::Override.new(:virtual_path => 'spree/shared/_main_nav_bar',
                     :name => 'add_phone_number_to_main_nav_bar',
                     :insert_after => '#home-link',
                     :erb => '<li id="phone-number"><a href="tel:+493068080595">Schweine Hotline: 030/68080595</a></li>',
                     :original => 'b783e7268d2ab196e65a32bc048cf6af2627dd06')
