Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'add_touch_icon_to_head',
                     :insert_after => "title",
                     :partial => 'spree/shared/app_icon',
                     :original => '93e28f5e86e8dd93941c61f65603b28aeb9ae5e4')
