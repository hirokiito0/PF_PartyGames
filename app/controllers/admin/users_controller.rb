class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(params[:id])
    @games = @user.games
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path
  end
end
