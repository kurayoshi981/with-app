class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").page(params[:page]).per(10)
  end
end
