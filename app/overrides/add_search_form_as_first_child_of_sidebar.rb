Deface::Override.new(:virtual_path => 'spree/shared/_sidebar',
                     :name => 'add_search_form_as_first_child_of_sidebar',
                     :insert_top => 'aside#sidebar #sidebar_wrapper',
                     :erb => "<%= render :partial => 'spree/shared/search' %>")


