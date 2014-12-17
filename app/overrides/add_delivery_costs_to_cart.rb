Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'add_delivery_costs_to_cart',
                     :insert_before => '[data-hook="outside_cart_form"]',
                     :erb => "<p>Ab einem Warenwert von 50€ versenden wir innerhalb Deutschlands kostenfrei. Kühlware ist ab 90€ Gesamtbestellwert kostenlos.</p>")