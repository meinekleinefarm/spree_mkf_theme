Deface::Override.new(:virtual_path => 'spree/shared/_reviews',
                     :name => 'add_br_clear_before_write_review_button',
                     :insert_before => "code[erb-loud]:contains('write_your_own_review')",
                     :erb=> '<br class="clear" />')




