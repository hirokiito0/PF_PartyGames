class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search

  def set_search
    @search = Game.ransack(params[:q]) # 検索ワードを受け取る
    @search_games = @search.result     # Viewに送るために引数に入れる
    @game_title_all = Game.all.pluck(:game_title)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end
end
