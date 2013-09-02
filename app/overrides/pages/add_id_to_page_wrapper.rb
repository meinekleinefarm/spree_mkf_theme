Deface::Override.new(:virtual_path => 'spree/pages/show',
                     :name => 'add_id_to_page_wrapper',
                     :surround => "code[erb-loud]:contains('spree/shared/content')",
                     :text => "<div id='page'><%= render_original %></div>"
                    )

Deface::Override.new(:virtual_path => 'spree/pages/show',
                     :name => 'add_sidebar_to_static_page',
                     :insert_after => 'div#page',
                     :erb => '<%- content_for :sidebar do -%>
                      <div data-hook="homepage_sidebar_navigation">
                        <%= render :partial => "spree/schweine/sidebar" %>
                      </div>
                    <%- end -%>'
)
