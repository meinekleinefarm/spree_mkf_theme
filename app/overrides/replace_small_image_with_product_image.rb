Deface::Override.new(:virtual_path => 'spree/shared/_products',
                     :name => 'replace_small_image_with_product_image',
                     :replace => "code[erb-loud]:contains('small_image')",
                     :erb => '<%= link_to product_image(product, :itemprop => "image"), product, :itemprop => "url" %>')