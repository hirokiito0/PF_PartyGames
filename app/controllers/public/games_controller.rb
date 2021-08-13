class Public::GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @comment = Comment.new
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find(params[:id])
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

  def update
    @game = Game.find(params[:id])
    @game.update(games_params)
    if @game.save
      redirect_to public_game_path(@game.id), notice: "You have updated user successfully."
    else
      render "edit"
    end
  end

  def destroy
  end

  private

  def games_params
    params.require(:game).permit(:game_title, :game_image, :game_introduction, :recommended, :price)
  end
end
