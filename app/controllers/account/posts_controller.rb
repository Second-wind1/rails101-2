class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    redirect_to account_posts_path, notice: "Update Success"
  end

private



  def post_params
    params.require(:post).permit(:content)
  end

end
