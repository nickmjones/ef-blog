class PostsController < ApplicationController

  def index
    @posts = Post.is_published.order('created_at DESC').limit(3)
  end

  def show
    @post = Post.friendly.find(params[:id])
  end
  
end