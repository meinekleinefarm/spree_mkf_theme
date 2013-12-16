Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'add_arrow_to_funnel_button',
                     :insert_after => "erb[loud]:contains('t(:checkout)')",
                     :text => '<span class="push-forward">&raquo;</span>')
