class PostsController < ApplicationController
  before_filter :post_id, :only => [:show, :edit]

  respond_to :html, :json, :xml, :js

  def index
    @posts = Post.all.order('posted_at DESC').limit(15)
    respond_with @posts
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(@post_id)
    @comment = @post.comments.build
  end

  def edit
    @post = Post.find(@post_id)
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      redirect_to(@post, :notice => 'Post was successfully created.')
    else
      render :action => :new
    end
  end

  private
  def post_id
    @post_id = params[:id].split('-').first
  end
end
