class Public::HomesController < ApplicationController
  def top
    @iine_ranks = Game.left_joins(:favorites).group(:id).select("games.*, count(favorites.id) as favorite_count").order("favorite_count desc")
    @rate_ranks = Game.find(Comment.group(:rate).order('avg(rate) desc').pluck(:game_id))
  end
end
