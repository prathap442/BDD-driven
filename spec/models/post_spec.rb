require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'it validates the post' do
    before(:example) do 
      @post = Post.create(date: Date.today,rationale: 'Thsi is the additional rationale')
    end  
    it 'creates the post' do
      expect(@post).to be_valid
    end

    it 'validates the presence of the date' do 
      @post.date = nil
      expect(@post).not_to be_valid
    end

    it 'validates the presence of the rationale' do
      @post.rationale = nil
      expect(@post).not_to be_valid
    end
  end
end
