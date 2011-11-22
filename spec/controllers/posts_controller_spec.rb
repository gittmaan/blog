require 'spec_helper'

describe PostsController do

  describe "GET 'index'" do
    it 'returns http success' do
      get :index
      response.should be_success
      assigns(:posts).should_not be_nil
    end
  end

  describe "GET 'new'" do
    it 'returns http success' do
      get :new
      response.should be_success
      assigns(:post).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it 'returns http success' do
      get :show, :id => Factory(:post).to_param
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it 'returns http success' do
      @post = Factory(:post)
      get :edit, :id => @post.to_param
      response.should be_success
      assigns(:post).should_not be_nil
    end
  end

  describe '#create' do
    describe 'with valid params' do
      it 'succeeds' do
        lambda do
          post :create, :post => Factory.build(:post).to_json
        end.should change(Post, :count).by(1)
      end
    end

    describe 'with invalid params' do

    end
  end
end
