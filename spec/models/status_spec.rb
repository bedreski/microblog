require 'rails_helper'

RSpec.describe Status, type: :model do
  
  before { build :status }

  describe 'status' do 

    context 'when is not supplied' do 
      subject { build :status, :is_empty}
      it { is_expected.not_to be_valid }
    end 

    context 'when the size is greater than max length' do 
      subject { build :status, :above_max_length } 
      it { is_expected.not_to be_valid }
    end 

  end 
end
