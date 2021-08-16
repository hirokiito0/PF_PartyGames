class Public::CommentsController < ApplicationController

  def create
    @game = Game.find(params[:game_id])
    comment = current_user.comments.new(comment_params)
    comment.image_id = current_user.image_id
    comment.game_id = @game.id
    comment.save
    redirect_to public_game_path(@game)
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:comment, :rate, :game_id)
  end
end
