Deface::Override.new(:virtual_path => 'spree/shared/_review',
                     :name => 'add_review_body_to_corresponding_paragraph',
                     :add_to_attributes => '[itemprop="reviewBody"]',
                     :attributes => {
                       :class => "reviewBody"
                      })



