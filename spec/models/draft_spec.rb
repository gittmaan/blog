require 'spec_helper'

describe Draft do
  describe 'attributes' do
    attributes = [
      :title,  :content, :author, :markdown,
      :created_at, :updated_at
    ]

    attributes.each do |field|
      it "responds to #{field}" do
        Draft.new.should respond_to(field)
      end
    end
  end

  describe 'validations' do
    before(:each) do
      @draft = Factory(:draft)
    end

    it 'rejects post with no title ' do
      @draft.title = ''
      @draft.should_not be_valid
    end

    it 'rejects post woth no content ' do
      @draft.content = ''
      @draft.should_not be_valid
    end
  end
end
