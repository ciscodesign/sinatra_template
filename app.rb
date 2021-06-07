require 'sinatra/base'

## add subdirectories
#
# Dir['./lib/*.rb', './helpers/*.rb'].sort.each do |file|
#   require_relative file
# end
# Dir[ './controllers/*.rb', './models/*.rb'].sort.each { |file| require file}

## SET ENVIRONMENT
#
# env    = ENV['RACK_ENV'] || 'development'

## set root folder
#
# root   = File.expand_path '..', __FILE__

## load database configuration file
#
# config = YAML.safe_load(File.read(File.join(root, 'config/database.yml')))

## ACTIVERECORD ONLY
## set activerecord configuration
#
# ActiveRecord::Base.configurations = config
# ActiveRecord::Base.establish_connection env.to_sym


class MyApp < Sinatra::Base
  
  # load environment db config
  # Dir["./config/#{ENV['RACK_ENV']}.yml"].sort.each { |file| config_file file }
  get '/' do
    "Hello world"
  end

end