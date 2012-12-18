Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'insert_bottom_product_image_divider',
                     :insert_bottom => '[data-hook="products_list_item"] .product',
                     :text => "<%= image_tag('store/divider-sidebar.png', :class => 'divider')",
                     :sequence => 2)

