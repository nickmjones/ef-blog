class PostsController < ApplicationController

  def index
    @posts = Post.with_preloaded_image.is_published.order('created_at DESC').limit(5)
  end

  def show
    @post = Post.friendly.find(params[:id])
    respond_to do |format|
      format.html {render :layout => 'post'}
    end
  end
  
end