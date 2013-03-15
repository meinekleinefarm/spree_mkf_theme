Deface::Override.new(:virtual_path => "spree/admin/shared/_product_sub_menu",
                     :name => "add_schweine_tab_to_admin",
                     :insert_bottom => "[data-hook='admin_product_sub_tabs']",
                     :text => "<%= tab :schweine %> ")