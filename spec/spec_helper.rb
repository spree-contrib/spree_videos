# This file is copied to ~/spec when you run 'ruby script/generate rspec'
# from the project root directory.
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'factory_girl'
require 'ffaker'

# Requires factories defined in spree_core
require 'spree/core/testing_support/factories'
require 'spree/core/testing_support/env'
require 'spree/core/url_helpers'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# pull in factories
Dir["#{File.dirname(__FILE__)}/factories/**"].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
  config.include Spree::Core::UrlHelpers
  config.use_transactional_fixtures = true
end

