Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_videos'
  s.version     = '1.2.3'
  s.summary     = 'Adds youtube videos to Spree commerce products'
  s.description = 'Add multiuple youtube videos, and a thumbnail selector' + 
                  'for those products to a Spree commerce product'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Michael Bianco'
  s.email             = 'info@cliffsidedev.com'
  s.homepage          = 'http://mabblog.com/'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 1.0.0')
  s.add_dependency('youtube_it', '>= 2.1.4')

  # test suite
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'capybara', '1.0.1'
  s.add_development_dependency 'factory_girl_rails', '~> 3.0.0'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'sqlite3'
end
