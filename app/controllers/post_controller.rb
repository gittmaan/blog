class PostController < ApplicationController
  def index
    @posts = Post.all.select(:title, :author, :id, :content, :posted_at).order('posted_at DESC').limit(15)
  end

  def new
  end

  def show
  end

  def edit
  end

end
