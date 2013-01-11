# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_mkf_theme'
  s.version     = '1.2.2'
  s.summary     = 'Spree commerce theme for meinekleinefarm.org'
  s.description = 'Spree commerce theme for meinekleinefarm.org'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Christoph Bünte'
  s.email     = 'cb@meinekleinefarm.org'
  s.homepage  = 'http://www.meinekleinefarm.org'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '>= 1.2.2'

  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sqlite3'
end
