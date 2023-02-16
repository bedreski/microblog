require 'rails_helper'
RSpec.describe "Users", type: :request do
  describe "GET /index json" do
    context 'when it loads correctly' do 
      let!(:user) { create(:user) }

      it 'return http status ok' do 
        get '/users.json', headers: { format: :json }

        expect(response).to have_http_status :ok 
      end 

      it 'have user display_name in the list' do 
        get '/users.json', headers: { format: :json }
        expect(response.body).to include(user.display_name)
      end 
    end 

    context 'when user list is empty' do 

      it 'does not display user list' do 
        get '/users.json', headers: { format: :json }
        expect(response.body).to eq('[]')
      end 
      
    end 
  end
end
