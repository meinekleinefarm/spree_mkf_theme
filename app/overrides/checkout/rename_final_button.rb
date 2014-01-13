Deface::Override.new(:virtual_path => 'spree/checkout/_payment',
                    :name => 'rename_final_button',
                    :replace => "code[erb-loud]:contains('submit_tag')",
                    :erb => "<%= submit_tag( t(:save_and_finish), :class => 'continue button primary') %>"
                    )

