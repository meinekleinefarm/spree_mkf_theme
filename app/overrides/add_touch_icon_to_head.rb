Deface::Override.new(:virtual_path => 'spree/shared/_head',
                     :name => 'add_touch_icon_to_head',
                     :insert_after => "title",
                     :erb => %Q{\n<link rel="apple-touch-icon-precomposed"     href="/assets/store/apple-touch-icon-57x57-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="72x72"   href="/assets/store/apple-touch-icon-72x72-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/assets/store/apple-touch-icon-114x114-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/store/apple-touch-icon-144x144-precomposed.png"/>
                      <link rel="apple-touch-icon-precomposed" sizes="241x241" href="/assets/store/apple-touch-icon-241x241-precomposed.png"/>
                      <meta name="apple-mobile-web-app-capable" content="yes" />
                      <meta name="apple-mobile-web-app-status-bar-style" content="black" />
                      <meta name="apple-mobile-web-app-title" content="black" />
                     },
                     :original => '93e28f5e86e8dd93941c61f65603b28aeb9ae5e4')
