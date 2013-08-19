module SpreeMkfTheme
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_mkf_theme'

    config.autoload_paths += %W(#{config.root}/lib)

    # Add the flash path
    # config.assets.paths << Rails.root.join('app', 'assets', 'flash')

    # Precompile additional assets
    # config.assets.precompile += %w( .swf )

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
