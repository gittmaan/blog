require 'spec_helper'

describe 'posts/index.html.haml' do
  before(:each) do
    Factory(:post)
    @posts = Post.all.entries
    render
  end

  describe 'page' do
    it 'has a title' do
      rendered.should have_selector('h1', :text => 'Post#index')
    end
  end
end


