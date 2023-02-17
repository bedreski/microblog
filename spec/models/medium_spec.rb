require 'rails_helper'

RSpec.describe Medium, type: :model do
  
  before { build :medium }

  describe 'url' do 

    context 'when is not empty' do 
      subject { build :medium, :not_empty_url}

      it {is_expected.to be_valid}
    end 

    context 'when is empty' do 
      subject { build :medium, :empty_url }

      it {is_expected.not_to be_valid}
    end 

    #more tests

  end 
end
