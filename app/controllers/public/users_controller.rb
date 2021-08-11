class Public::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user  = User.find(params[:id])
    @games = @user.games
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params[:id])
      redirect_to public_user_path(current_user), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end
end
