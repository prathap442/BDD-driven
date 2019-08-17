require 'rails_helper'
describe 'check posts index page' do 
  describe 'check status for the post page' do
    it "used to check if the root path is being visited" do
      visit posts_path
      expect(page.status_code).to eq(200)
    end

    it 'used to check if the page has the Posts title' do
      visit posts_path
      expect(page).to have_content(/Posts/)
    end
  end
end