ENV['RACK_ENV'] = 'test'

require 'rspec'
require 'rack/test'

module RSpecMixin
  include Rack::Test::Methods
  def app() MyApp end
end

RSpec.configure do |config|
  config.include RSpecMixin

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
