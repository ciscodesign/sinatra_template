require_relative '../spec_helper'

describe ApplicationController do

  context MyApp do

    before do
      visit '/'
    end

    subject { last_response.body } 

    it 'respond correctly to get index' do    
      expect(status_code).to eq(200)
    end

    it "says hello" do
      expect(page.body).to eq('Hello world')
    end
    
  end
end

