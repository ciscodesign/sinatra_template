ENV['RACK_ENV'] = 'test'
require_relative '../app'
require_relative 'spec_helper'

require 'rspec'
require 'rack/test'

describe MyApp do

  it "responds correctly" do
    get '/'
    expect(last_response).to be_ok
  end

  it "says hello" do
    get '/'
    expect(last_response.body).to eq('Hello world')
  end
  
end