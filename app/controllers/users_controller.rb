class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@items = @user.items
	end

	def index
		@users = User.all
	end


	def following
	    @title = "Following"
	    @user = User.find(params[:id])
	    @users = @user.followed_users.paginate(page: params[:page])
	    render 'show_follow'
	end

	def followers
	    @title = "Followers"
	    @user = User.find(params[:id])
	    @users = @user.followers.paginate(page: params[:page])
	    render 'show_follow'
	end

	def create
	  @user = User.create( user_params )
	end

	private

	# Use strong_parameters for attribute whitelisting
	# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar, :name)
	end
end
