class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
