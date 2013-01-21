Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                    :name => 'surround_payment_methods_with_columns',
                    :insert_top => "#available_payment_methods",
                    :cut => {
                      :start => "code[erb-silent]:contains('@order.available_payment_methods.each')",
                      :end => "code[erb-silent]:contains('end')"
                    },
                    :sequence => {
                      :after => 'insert_three_columns_at_top_of_payment_methods'
                    })
