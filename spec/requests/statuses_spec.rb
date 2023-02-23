require 'rails_helper'

RSpec.describe "Statuses", type: :request do

  describe 'GET /statuses' do 
    let(:status) { create(:status) }

    
  end 

  describe 'GET /statuses/show json' do 

    let(:status) { create(:status) }

    context 'when it loads correctly' do 

      it 'returns http status ok' do 
        get status_path(status.id), headers: { format: :json }
        expect(response).to have_http_status :ok
      end 

      it 'loads show template' do 
        get status_path(status.id), headers: { format: :json }
        expect(response).to render_template(:show)
      end 
    end 
  end 
end
