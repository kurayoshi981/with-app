class PostController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to :root
    else
      @post.valid?
      render action: :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to :root
    else
      @post.valid?
      render action: :edit
    end
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
      :salary
      ).merge(user: current_user)
  end
end
