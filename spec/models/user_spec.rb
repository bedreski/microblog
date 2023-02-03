require 'rails_helper'

RSpec.describe User, type: :model do

  before { build :user }

  describe 'handle' do

    context 'is not within the pattern' do 
      subject { build :user, :handle_is_not_in_pattern}
      it { is_expected.not_to be_valid}
    end 

    context 'is not empty' do
      it { is_expected.to validate_presence_of(:handle).on(:create) }
    end 

    context 'have length inside of range' do
      it { is_expected.to validate_length_of(:handle).is_at_least(4).is_at_most(12) }
    end 

    context 'is in the correct pattern' do 
      it { is_expected.to allow_value('som_eName').for(:handle) }
    end 
  end 

  describe 'display name' do

    context 'is not empty' do
      it { is_expected.to validate_presence_of(:display_name) }
    end

    context 'respect maximum characters length' do 
      it { is_expected.to validate_length_of(:display_name).is_at_most(30) }
    end 
  end 

  describe 'bio' do 

    context 'when is supplied' do 
      it { is_expected.to validate_length_of(:bio).is_at_most(300) }
    end 
  end 

  describe 'age' do 
    context 'is not empty' do 
      it { is_expected.to validate_presence_of(:born_at) }
    end 

    context 'is greater than or equal to 13' do
      # it { }
    end 
  end 
end
