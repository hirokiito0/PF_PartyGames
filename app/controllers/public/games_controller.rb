class Public::GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(params[:id])
  end

  def new
    @game = Game.new
  end

  def edit
  end

  def create
    @game         = Game.new(games_params)
    @game.user_id = current_user.id
    if @game.save
      redirect_to public_games_path
    else
      redirect_to new_public_game_path
    end
  end

  def destroy
  end
end
