# encoding: UTF-8
Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'order_products_by_count_on_hand',
                    :replace => "erb[loud]:contains('spree/shared/products')",
                    :erb => "<%= render :partial => 'spree/shared/products', :locals => { :products => @products.sort_by{|o| o.on_hand}.reverse, :taxon => @taxon } %>")




