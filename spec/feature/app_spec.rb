require 'rails_helper'

RSpec.describe 'Peeper Blog' do
  
  def app 
    App 
  end 

  describe 'index' do 

    context 'when load and show content correctly' do 
      it { should route(:get, '/statuses').to(action: :index) }
    end 
  end 

  describe 'status controller' do 

    context 'when choose create new status' do 
      it { should route(:post, '/statuses').to(action: :create) }
    end 

  end 

end
