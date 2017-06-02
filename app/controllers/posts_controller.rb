class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    flash[:succes] = "Post has been created"
    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end