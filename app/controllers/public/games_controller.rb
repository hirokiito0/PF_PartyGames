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
      redirect_to public_user_path(current_user)
    else
      render  "new"
    end
  end

  def destroy
  end

  private

  def games_params
    params.require(:game).permit(:game_title, :game_image, :game_introduction, :recommended, :price)
  end
end
