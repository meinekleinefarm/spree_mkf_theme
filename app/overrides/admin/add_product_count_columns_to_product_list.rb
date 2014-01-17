Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "exchange_colgroup_definition",
                     :replace => "colgroup",
                     :erb => '<colgroup><col style="width: 15%;"><col style="width: 10%;"><col style="width: 38%;"><col style="width: 10%;"><col style="width: 12%;"><col style="width: 15%;"></colgroup>')


Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "add_product_count_column_header_to_product_list",
                     :insert_before => "[data-hook='admin_products_index_header_actions']",
                     :erb => '<th><%= sort_link @search,:count_on_hand, t(:on_hand), { :default_order => "desc" } %></th>')


Deface::Override.new(:virtual_path => "spree/admin/products/index",
                     :name => "add_product_count_column_to_product_list",
                     :insert_before => "[data-hook='admin_products_index_row_actions']",
                     :erb => '<td class="align-center"><%= product.on_hand %></td>')


