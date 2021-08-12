class Public::CommentsController < ApplicationController

  def create
    game = Game.find(params[:game_id])
    comment = current_user.comments.new(comment_params)
    comment.image_id = image.id
    if comment.save
      redirect_to public_game_path(@game)
    else
      flash.now[:alert] = 'コメントを入力してください。'
    end
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end

end
