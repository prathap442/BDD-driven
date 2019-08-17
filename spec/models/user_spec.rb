require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'it validates the user' do
    before(:example) {
      @user = User.new(email: 'p1@gmail.com', first_name: 'prathap', last_name: 'mohan',password: '123456',password_confirmation: '123456')
    }
    it 'creates the user' do
      expect(@user).to be_valid
    end

    it 'sees the user is invalid when the first name is not given' do 
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it 'sees the user is invalid when the last name is not given' do 
      @user.last_name = nil
      expect(@user).not_to be_valid
    end

    it 'expects the password should definitely be present' do 
      @user.password = nil
      expect(@user).not_to be_valid
    end
  end
end
