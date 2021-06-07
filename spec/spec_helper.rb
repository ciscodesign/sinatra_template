ENV['RACK_ENV'] = 'test'
require 'capybara/rspec'
require 'capybara'
require 'capybara/dsl'
require_relative '../app'
require 'rspec'
require 'rack/test'
require 'pry'

module RSpecMixin
  include Rack::Test::Methods
  include Capybara
  def app() MyApp end
  Capybara.app = Rack::Builder.parse_file(File.expand_path('../../config.ru', __FILE__)).first
end

RSpec.configure do |config|
  config.include RSpecMixin
  config.include Capybara::DSL
  config.include Capybara::RSpecMatchers
  
  #before test stuff
  config.before(:suite) do
    warn "Environment is: #{MyApp.settings.environment}"
  end

  #after test stuff
  config.after(:suite) do
    #...
  end

end

## To see verbose mode
# rspec spec --format documentation
