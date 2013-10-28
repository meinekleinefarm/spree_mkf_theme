Deface::Override.new(:virtual_path => 'spree/shared/_error_messages',
                     :name => 'make_error_message_html_safe',
                     :replace => "li",
                     :erb => '<li><%= msg.html_safe %></li>' )
