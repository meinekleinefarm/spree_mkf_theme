Deface::Override.new(:virtual_path => 'spree/products/_thumbnails',
                    :name => 'add_class_thumbnail_to_small_images',
                    :replace => "code[erb-loud]:contains('link_to')",
                    :erb => '<%= link_to image_tag(i.attachment.url(:mini), :class => "img-circle"), i.attachment.url(:product), :class => "thumbnail" %>',
                    :original => '<%= link_to image_tag(i.attachment.url(:mini)), i.attachment.url(:product) %>')
