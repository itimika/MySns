class FollowersController < ApplicationController
  def create
    follower = current_user.followers.new(follower_id: params[:id])
    if follower.save
      redirect_to "/#{User.find(params[:id]).name}"
    end
  end

  def destroy
    follower = current_user.followers.find_by(follower_id: params[:id])
    follower.destroy
    redirect_to "/#{User.find(params[:id]).name}"
  end
end
