class HomesController < ApplicationController
  def top
    @new_games  = Game.all.order(created_at: :desc) # idを降順で取得する
    @iine_ranks = Game.left_joins(:favorites).group(:id).select('games.*, count(favorites.id) as favorite_count').order('favorite_count desc')
    @rate_ranks = Game.find(Comment.group(:game_id).order('avg(rate) desc').pluck(:game_id))
                      # コメントのゲームIDごとの評価の平均を受け取る
  end
end
