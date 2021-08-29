class Public::GamesController < ApplicationController
  def index
    @games     = Game.all
    params[:q] = { sorts: 'id desc' }
    @search    = Game.ransack()
  end

  def show
    @game    = Game.find(params[:id])
    @comment = Comment.new
    # 下記コードで評価の平均を取得
    @average_rate = Comment.where(game_id: params[:id]).average(:rate)
    # gameに保存されているcommentの情報を受け取りaverage(rate)によってrateの平均を出す
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
      render 'new'
    end
  end

  def update
    @game = Game.find(params[:id])
    @game.update(games_params)
    if @game.save
      redirect_to public_game_path(@game.id), notice: 'You have updated user successfully.'
    else
      render 'edit'
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    if user_signed_in?
      redirect_to public_user_path(current_user)
    else
      redirect_to public_games_path
    end
  end

  def search
    if params[:q].present?
      # 検索フォームからアクセスした時の処理
      @search = Game.ransack(search_params)
      @games  = @search.result
    else
      # 検索フォーム以外からアクセスした時の処理
      params[:q] = { sorts: 'id desc' }
      @search = Game.ransack
      @games  = Game.all
    end
    render :index
  end

  def search_params
    params.require(:q).permit(:sorts)
  end

  private

  def games_params
    params.require(:game).permit(:game_title,
                                 :game_image,
                                 :game_introduction,
                                 :recommended,
                                 :price)
  end
end
