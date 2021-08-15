class Game < ApplicationRecord
  belongs_to :user
#  belongs_to :admin
  has_many :comments,  dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  attachment :game_image
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
