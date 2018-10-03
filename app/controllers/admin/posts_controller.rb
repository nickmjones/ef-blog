class Admin::PostsController < ApplicationController
  before_action :authenticate_author!
  layout "admin"

  def index
    if params[:term]
      @posts = Post.search_by_full_post(params[:term])
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admin_root_path, notice: "Post created."
    else
      render 'new'
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post.update(post_params)
      redirect_to admin_root_path, notice: "Post updated."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.friendly.find(params[:id])
    @post.destroy
    redirect_to admin_root_path, notice: "Post removed."
  end

  private

  def set_post
    @post = Post.friendly.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :meta_desc, :meta_keys, :slug, :search, :image, :author_id, :is_published)
  end
  
end