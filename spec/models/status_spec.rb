require 'rails_helper'

RSpec.describe Status, type: :model do
  
  before { build :status }

  describe 'body field' do 

    context 'when is not supplied' do 
      subject { build :status, :is_empty } #body 
      it { is_expected.not_to be_valid }
    end 

    context 'when the size is greater than max length' do 
      subject { build :status, :above_max_length } 
      it { is_expected.not_to be_valid }
    end 

    context 'when is supplied' do 
      subject { build :status, :is_valid } 
      it { is_expected.to be_valid }
    end 

    context "has the belongs_to association with 'users' table" do 
      it { should belong_to(:user)}
    end 

  end 
end