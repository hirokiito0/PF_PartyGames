class Public::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(params[:id])
    @games = @user.games
  end

  def edit
  end
end
