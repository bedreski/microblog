require 'rails_helper'

RSpec.describe StatusesController, type: :controller do
  
  def app 
    App 
  end 

  describe 'index' do 

    context 'when loads and show content correctly' do 
      it "has a 200 status code" do
        get :index
        expect(response.status).to eq(200)
      end
    end 
  end 

  describe 'status controller' do 

    context 'when choose create new status' do 
      it { should route(:post, '/statuses').to(action: :create) }
    end 

  end 

end
