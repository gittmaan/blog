require 'spec_helper'

describe PostController do

  describe "GET 'index'" do
    it 'returns http success' do
      get 'index'
      response.should be_success
      assigns(:posts).should_not be_nil
    end
  end

  describe "GET 'new'" do
    it 'returns http success' do
      get 'new'
      response.should be_success
      assigns(:post).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it 'returns http success' do
      get 'show', :id => Factory(:post).to_param
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it 'returns http success' do
      @post = Factory(:post)
      get 'edit', :id => @post.to_param
      response.should be_success
      assigns(:post).should_not be_nil
    end
  end

  describe "POST 'create'" do
    it 'returns http success' do

    end
  end
end
