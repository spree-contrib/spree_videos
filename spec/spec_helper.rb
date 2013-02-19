ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'factory_girl'
require 'ffaker'
require 'shoulda-matchers'


# Requires factories defined in spree_core
require 'spree/core/testing_support/factories'
require 'spree/core/testing_support/capybara_ext'
require 'spree/core/testing_support/controller_requests'
require 'spree/core/testing_support/authorization_helpers'
require 'spree/core/testing_support/preferences'
require 'spree/core/testing_support/flash'
require 'spree/core/url_helpers'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# pull in factories
Dir["#{File.dirname(__FILE__)}/factories/**"].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
  config.include Spree::Core::UrlHelpers
  config.include FactoryGirl::Syntax::Methods
  # config.use_transactional_fixtures = true
end

