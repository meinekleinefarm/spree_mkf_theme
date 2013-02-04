Deface::Override.new(:virtual_path => 'spree/shared/_review',
                     :name => 'remove_submitted_on_string',
                     :remove => "code[erb-loud]:contains('submitted_on')")