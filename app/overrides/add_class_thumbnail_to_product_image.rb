Deface::Override.new(:virtual_path => 'spree/products/_image',
                     :name => 'add_class_thumbnail_to_product_image',
                     :replace => "code[erb-loud]:contains('product_image')",
                     :erb => '<%= product_image(@product, :itemprop => "image", :class => "thumbnail span4") %>',
                     :original => 'e65d6818d29229e7786d7121ec3af40252be74e8')