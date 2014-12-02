# encoding: UTF-8
Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'better_describe_empty_product_search',
                    :replace_contents => 'h6.search-results-title',
                    :text => "Keine Produkte mit '<%= params[:keywords] %>' gefunden.")

Deface::Override.new(:virtual_path => 'spree/products/index',
                    :name => 'better_describe_empty_product_search2',
                    :insert_bottom => 'h6.search-results-title',
                    :text => '<p style="font-size:80%;">Aber in der <a href="/products">Übersicht</a> findest Du andere Leckereien!</p>')




