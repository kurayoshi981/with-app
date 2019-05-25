class PostController < ApplicationController
  before_action :set_post, only: %i(edit update show destroy)
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root, notice: 'メッセージの送信に成功しました'
    else
      @post.valid?
      render action: :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      redirect_to :root
    else
      @post.valid?
      render action: :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to :root
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(
      :name,
      :profile,
      :birthday,
      :age,
      :sex,
      :job_type,
      :work_location,
      :skill,
      :employment_status,
      :salary,
      :image
      ).merge(user: current_user)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
