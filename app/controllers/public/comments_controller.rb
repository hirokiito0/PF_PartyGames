class Public::CommentsController < ApplicationController
  def create
    @game            = Game.find(params[:game_id])
    @comment         = current_user.comments.new(comment_params)
    @comment.game_id = @game.id
    @comment.save
    # redirect_to public_game_path(@game)　非同期通信を導入したため不要になった
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
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
