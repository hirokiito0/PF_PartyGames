class Public::CommentsController < ApplicationController
  def create
    @game            = Game.find(params[:game_id])
    @comment         = current_user.comments.new(comment_params)
    @comment.game_id = @game.id
    @comment.save
    # redirect_to public_game_path(@game)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    # redirect_to public_games_path
  end

  private

  def comment_params
    params.require(:comment).permit(:comment,
                                    :rate,
                                    :game_id)
  end
end
