Deface::Override.new(:virtual_path => 'spree/shared/_review',
                     :name => 'move_itemprop_name_above_rating',
                     :insert_before => '.reviews-rating',
                     :cut => 'h6.itemName',
                     :sequence => {
                       :after => 'make_review_title_a_headline'
                     })

