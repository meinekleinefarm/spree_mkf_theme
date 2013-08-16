Deface::Override.new(:virtual_path => 'spree/orders/_line_item',
                     :name => 'escape_variant_description_with_html_safe',
                     :replace => "code[erb-loud]:contains('line_item_description(variant)')",
                     :erb => '<%= line_item_description(variant).html_safe %>')
