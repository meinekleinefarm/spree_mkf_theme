Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'surround_data_hook_products_list_item',
                     :surround_contents => '[data-hook="products_list_item"]',
                     :text => '<div class="product"><%= render_original %></div>',
                     :sequence => 1)
