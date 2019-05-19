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
