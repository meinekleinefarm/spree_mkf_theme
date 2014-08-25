Deface::Override.new(:virtual_path => "spree/admin/variants/index",
                     :name => "exchange_colgroup_definition",
                     :replace => "colgroup",
                     :erb => '<colgroup>
                                <col style="width: 5%" />
                                <col style="width: 25%" />
                                <col style="width: 10%" />
                                <col style="width: 15%" />
                                <col style="width: 15%" />
                                <col style="width: 15%" />
                                <col style="width: 10%" />
                              </colgroup>')


Deface::Override.new(:virtual_path => "spree/admin/variants/index",
                     :name => "add_initial_count_column_header_to_variant_list",
                     :insert_before => "[data-hook='variants_header'] .actions",
                     :erb => '<th class="initial_count"><%= t(:initially_on_hand) %></th>')


Deface::Override.new(:virtual_path => "spree/admin/variants/index",
                     :name => "add_initial_count_column_to_variant_list",
                     :insert_before => "[data-hook='variants_row'] .actions",
                     :erb => '<td class="initial_count align-center"><%= variant.initial_count_on_hand %></td>')


