class Public::HomesController < ApplicationController
  def top
    @iine_ranks = Game.find(Favorite.group(:game_id).order('count(game_id) desc').limit(5).pluck(:game_id))
    #@rate_ranks = Game.find(Comments.rate.group(:game_id).order('(game_id) desc').limit(5).pluck(:game_id))
  end
end
