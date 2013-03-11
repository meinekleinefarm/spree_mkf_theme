Deface::Override.new(:virtual_path => 'spree/taxons/show',
                    :name => 'add_taxon description_to_filtered_list',
                    :insert_after => 'h1',
                    :original => 'ea93a4c45e39063b5a054c65d6f9a762d9890fd3',
                    :erb => '<p class="description"><%= truncate(strip_tags(@taxon.description), :length => 140) %></p>')
