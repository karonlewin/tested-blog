class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:succes] = "Post has been created"
      redirect_to posts_path
    else
      flash.now[:danger] = "Post has not been created"
      render :new
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
