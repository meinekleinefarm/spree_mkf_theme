Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "schweine_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:schweine, :url => spree.admin_schweine_path, :icon => 'icon-heart') %>")

Deface::Override.new(:virtual_path => "spree/layouts/admin",
                    :name => "rinder_admin_tab",
                    :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                    :text => "<%= tab(:rinder, :url => spree.admin_rinder_path, :icon => 'icon-heart') %>")