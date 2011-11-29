require 'spec_helper'

describe 'posts/new.html.haml' do
  before(:each) do
    @post = Factory.build(:post)
    render
  end

  describe 'form' do
    it 'has a title' do
      rendered.should have_selector('div', :class => 'post') do |content|
        content.css('h2').text.should == 'New Post'
      end
    end

    it 'has a text box for title of the post' do
      rendered.should have_selector('div', :class => 'sidebar') do |sidebar|
        sidebar.should have_selector("input[name='post[title]']")
      end
    end
  end
end

