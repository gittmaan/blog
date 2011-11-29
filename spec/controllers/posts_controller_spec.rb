require 'spec_helper'

describe PostsController do

  describe "GET 'index'" do
    it 'returns http success' do
      get :index
      response.should be_success
      assigns( :posts ).should_not be_nil
    end
  end

  describe "GET 'new'" do
    it 'returns http success' do
      get :new
      response.should be_success
      assigns( :post ).should_not be_nil
    end
  end

  describe "GET 'show'" do
    it 'returns http success' do
      get :show, :id => Factory( :post ).to_param
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it 'returns http success' do
      @post = Factory( :post )
      get :edit, :id => @post.to_param
      response.should be_success
      assigns( :post ).should_not be_nil
    end
  end

  describe '#create' do
    it 'succeeds' do
      lambda do
        post :create, :post => Factory.build( :post ).as_json
      end.should change( Post, :count ).by( 1 )
      response.should be_redirect
    end
  end

  describe '#update' do
    def modifiy_params( hash )
      hash.inject( {} ) do | memo, ( k,v ) |
        if v.is_a?( Hash )
          memo.merge!( k => modifiy_params( v ) )
        else
          if v.is_a?(String)
            memo[k.to_sym] = v + ( k == :email_address ? '.modified' : ' (modified)' )
          else
            memo[k.to_sym] = v
          end
        end
        memo
      end
    end
    it 'succeeds' do
      post_obj = Factory( :post )
      updated_params = modifiy_params( post_obj.as_json )
      put :update, :id => post_obj.to_param, :post => updated_params.as_json
      response.should be_redirect
    end
  end
end
