class Account::PostsController < ApplicationController
  before_action :authenticate_user!
	before_action :find_post_and_check_permission, only: [ :destroy]

  def index
    @posts = current_user.posts
  end


  def destroy
		@post.destroy
		redirect_to account_posts_path, alert: "Delete success"
	end

  private

  def post_params
    params.require(:post).permit(:content)
  end

  def find_post_and_check_permission
		@post = Post.find(params[:id])
  	@group = @post.group

		if current_user != @post.user
			redirect_to group_path(@group), alert:"you have no permission"
		end
	end

end
