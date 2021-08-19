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
    @user.update(users_params)
    if @user.save
      redirect_to public_user_path(current_user), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end

   private

  def users_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
