require 'rails_helper'
describe 'check home page' do 
  describe 'check status' do
    it "used to check if the root path is being visited" do
      visit root_path
      expect(page.status_code).to eq(200)
    end
  end
end