class Public::CommentsController < ApplicationController
  def create
    @game            = Game.find(params[:game_id])    #jsファイルにgame_idを送るために必要
    @comment         = current_user.comments.new(comment_params)
    @comment.game_id = @game.id
    @comment.save
    @average_rate    = Comment.where(game_id: params[:game_id]).average(:rate)
    #星評価平均の非同期通信導入のためjsファイルにaverage_rateの数値を送るために必要
    # redirect_to public_game_path(@game)　非同期通信を導入したため不要になった
  end

  def destroy
    @game            = Game.find(params[:game_id])    #jsファイルにgame_idを送るために必要
    @comment         = Comment.find(params[:id])
    @comment.destroy
    @average_rate    = Comment.where(game_id: params[:game_id]).average(:rate)
    #星評価平均の非同期通信導入のためjsファイルにaverage_rateの数値を送るために必要
    # redirect_to public_games_path　非同期通信を導入したため不要になった
  end

  private

  def comment_params
    params.require(:comment).permit(:comment,
                                    :rate,
                                    :game_id
                                    )
  end
end
