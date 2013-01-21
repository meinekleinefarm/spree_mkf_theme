Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                    :name => 'insert_three_columns_at_top_of_payment_methods',
                    :insert_top => '[data-hook="checkout_payment_step"]',
                    :erb => '<div id="available_payment_methods" class="columns three"></div>')
