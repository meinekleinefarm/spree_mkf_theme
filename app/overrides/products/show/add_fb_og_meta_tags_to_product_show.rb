Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_fb_og_meta_tags_to_product_show',
                     :insert_bottom => 'div[data-hook="product_show"]',
                     :partial => 'spree/products/fb_og_meta_tags')
