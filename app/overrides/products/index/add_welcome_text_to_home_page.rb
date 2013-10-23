# encoding: UTF-8
Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'add_welcome_text_to_home_page',
                    :insert_before => '[data-hook="homepage_products"]',
                    :text => '<h2>Hier gibt´s lecker Wurst mit Gesicht.</h2><p> Falls die Sorte Deiner Wahl ausverkauft ist: Mit dem <a href="http://eepurl.com/h6YTQ" target="_blank">Schweine-Newsletter</a> informieren wir über Wurst- und andere Neuigkeiten.</p>')


