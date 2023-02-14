require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /index json" do
    
    context "when it loads correctly" do 

      it "return 200 status code (success)" do 
        get '/users.json'
        expect(response).to have_http_status(:success)
        #or -- expect(response.status).to eq(200)
      end 

      it "have user display_name in the list" do 
        user = create :user
        get '/users.json'
        expect(response.body).to include(user.display_name)
      end 
    end 
  end
end
