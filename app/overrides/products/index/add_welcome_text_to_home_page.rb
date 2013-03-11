# encoding: UTF-8
Deface::Override.new(:virtual_path => 'spree/home/index',
                    :name => 'add_welcome_text_to_home_page',
                    :insert_before => '[data-hook="homepage_products"]',
                    :text => '<h2>Alle Leckereien aus Schwein</h2><p>Oben links auf das aktuellste Schwein klicken, um seine Wurst zu bestellen (Schwarzweißschweine wurden bereits geschlachtet). Weiter unten ist auch sofort lieferbare Wurst vom sogenannten Schwein x zu haben. Alles ausverkauft? Gerne nehme ich Nachfragen oder Vorbestellung per Mail entgegen.</p>')


