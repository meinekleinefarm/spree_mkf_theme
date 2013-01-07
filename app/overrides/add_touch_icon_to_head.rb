Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'add_touch_icon_to_head',
                     :insert_after => "title",
                     :erb => %Q{\n<link rel="apple-touch-icon-precomposed" sizes="57x57" href="/assets/store/apple-touch-icon-57x57-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/assets/store/apple-touch-icon-72x72-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/store/apple-touch-icon-114x114-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/store/apple-touch-icon-144x144-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="241x241" href="/assets/store/apple-touch-icon-241x241-precomposed.png"/>
                     })
