require 'rails_helper'

RSpec.describe "Statuses", type: :request do

  describe 'GET /statuses/show json' do 

    let(:status) { create(:status) }

    context 'when it loads correctly' do 

      it 'returns http status ok' do 
        get status_path(status.id), headers: { format: :json }
        expect(response).to have_http_status :ok
      end 
    end 
  end 
end
