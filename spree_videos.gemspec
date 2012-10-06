Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_videos'
  s.version     = '1.3.0'
  s.summary     = 'Adds youtube videos to Spree commerce products'
  s.description = 'Add multiuple youtube videos, and a thumbnail selector' + 
                  'for those products to a Spree commerce product'
  s.required_ruby_version = '>= 1.8.7'

  s.authors           = ['Mark Linn', 'Michael Bianco']
  s.email             = ['marklinn@xwcsolutions.com', 'info@cliffsidedev.com']
  s.homepage          = 'http://github.com/iloveitaly/Spree-Videos'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '~> 1.1.0')
  s.add_dependency('youtube_it', '~> 2.1.5')
end
