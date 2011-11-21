require 'spec_helper'

describe Comment do
  describe 'attributes' do
    attributes = [
      :name,  :email, :content, :admin, :post_id, :referrer,
      :comment_type, :permalink, :user_ip, :user_agent,
      :created_at, :updated_at
    ]

    attributes.each do |field|
      it "responds to #{field}" do
        Comment.new.should respond_to(field)
      end
    end
  end

  describe 'associations' do
    it 'belongs to post' do
      Comment.should belong_to :post
    end
  end

  describe 'validations' do
    before(:each) do
      @comment = Factory(:comment)
    end

    it 'rejects comment with no content ' do
      @comment.content = ''
      @comment.should_not be_valid
    end
  end
end
