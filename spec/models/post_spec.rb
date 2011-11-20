require 'spec_helper'

describe Post do
  describe 'attributes' do
    attributes = [
      :title,  :content, :author, :markdown, :commentable,
      :created_at, :updated_at, :posted_at
    ]

    attributes.each do |field|
      it "responds to #{field}" do
        Post.new.should respond_to(field)
      end
    end
  end

  describe 'validations' do
    before(:each) do
      @post = Factory(:post)
    end

    it 'rejects post with no title ' do
      @post.title = ''
      @post.should_not be_valid
    end

    it 'rejects post woth no content ' do
      @post.content = ''
      @post.should_not be_valid
    end
  end
end
