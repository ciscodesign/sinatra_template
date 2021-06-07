require_relative '../spec_helper'
include ApplicationHelper
describe  ApplicationHelper do
  it 'says hello' do
    expect(app.say_hello).to eq("I'm the ApplicationHelper")
  end
end
