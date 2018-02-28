class HomeController < ApplicationController
  def index
    @new_post = Post.new
    @posts = Post.left_outer_joins(:comments).distinct.includes(:comments)
  end
end
