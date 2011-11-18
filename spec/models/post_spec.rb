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

  end
end
