Deface::Override.new( :virtual_path => 'spree/checkout/registration',
                      :name => 'exchange_login_parts',
                      :insert_before => '#account',
                      :cut => '#guest_checkout'
                    )

Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                     :name => 'add_alpha_to_guest_checkout',
                     :add_to_attributes => '#guest_checkout',
                     :attributes => {
                       :class => "alpha"
                     })

Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                    :name => 'remove_omega_from_guest_checkout',
                    :remove_from_attributes => '#guest_checkout',
                    :attributes => {
                      :class => "omega"
                    })

Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                     :name => 'add_omega_to_account',
                     :add_to_attributes => '#account',
                     :attributes => {
                       :class => "omega"
                     })

Deface::Override.new(:virtual_path => 'spree/checkout/registration',
                    :name => 'remove_alpha_from_account',
                    :remove_from_attributes => '#account',
                    :attributes => {
                      :class => "alpha"
                    })
