class PostsController < ApplicationController

  def show
    @post = Post.find_by_permlink!(params[:id])
    @title = @post.title
  end

  def index
    redirect_to post_path(Post.all.first)
  end
end
