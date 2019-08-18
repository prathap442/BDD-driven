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

  describe 'new post form submission' do
    it 'first check the posts/new page exists' do
      visit new_post_path
      expect(page.status_code).to eq(200)
    end

    it 'fills the form of new post and submits' do
      visit new_post_path
      fill_in 'post[date]',with: Date.today
      fill_in 'post[rationale]',with: 'This is the rationale'
      click_on 'save'
      expect(page).to have_content('This is the rationale') 
    end
  end
end