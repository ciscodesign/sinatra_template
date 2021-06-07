require 'sinatra/base'

class ApplicationController < MyApp
  
  get '/' do
    "Hello world"
  end
  
  #fallback
  not_found do
    status 404
  end

end