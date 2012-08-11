class PostsController < ApplicationController

  def show
    @post = Post.find_by_permlink!(params[:id])
    @title = @post.title
  end
end
