class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:show]

  def index
    @posts = Post.order(created_at: :desc)
  end
end
