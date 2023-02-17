require 'rails_helper'
RSpec.describe "Statuses", type: :request do
  describe 'GET /statuses/show json' do 

    let(:status) { create(:status) }

    context 'when it loads correctly' do 

      it 'returns http status ok' do 
        get status_path(status.id), headers: { 'Accept': 'application/json' }
        expect(response).to have_http_status :ok
      end 
    end 

    context 'when body length is greater than 150 characters' do 

      it 'must display full_body key' do 
        status = double("status", user: double(display_name: "example"), replied_id: 1)
        allow(status).to receive(:body) {'a'*170}
        allow(Status).to receive(:all) { [status] }
        get '/', headers: { 'Accept': 'application/json' }
        expect(response.body).to include('full_body')
      end 
    end 
  end 
end
