require_relative '../spec_helper.rb'
require 'rails_helper'

# RSpec.describe User, type: :model do
#   let(:user) { build(:user) }
# end

describe User do 

  let(:user) {User.new}

  describe '#username' do

    context 'when handle is not provided' do

      it 'does not let user proceed' do
        expect()
    end 
  end 
  #then use case 

end 
