require 'spec_helper'

describe Spam do
  describe 'attributes' do
    attributes = [
      :name,  :email, :website, :content, :comment_type,
      :permalink, :user_ip, :user_agent, :referrer, :post_id,
      :created_at, :updated_at
    ]

    attributes.each do |field|
      it "responds to #{field}" do
        Spam.new.should respond_to(field)
      end
    end
  end

  describe 'associations' do
    it 'belongs to comments' do
      Spam.should belong_to :post
    end
  end

  describe 'validations' do
    before(:each) do
      @spam = Factory(:spam)
    end

    it 'rejects post woth no content ' do
      @spam.content = ''
      @spam.should_not be_valid
    end
  end
end
