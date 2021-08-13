class Public::CommentsController < ApplicationController

  def create
    game = Game.find(params[:game_id])
    comment = current_user.comments.new(comment_params)
    comment.image_id = image_id
    comment.save
    redirect_to public_game_path(game)
  end

  def destroy
  end

  private

  def comment_params
    params.permit(:comment)
  end
end
