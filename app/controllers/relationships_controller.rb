class RelationshipsController < ApplicationController
  before_action :user_signed_in?

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    flash[:alert] = "You're now following"
    redirect_to @user
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    flash[:alert] = "You're no longer following"
    redirect_to @user
  end
end