Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'surround_data_hook_products_list_item',
                     :surround_contents => '[data-hook="products_list_item"]',
                     :text => '<div class="product"><%= render_original %></div>',
                     :original => 'de2693a76d336b10c7896a252860365447ca4ddb',
                     :sequence => 1)
