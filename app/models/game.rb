class Game < ApplicationRecord
  belongs_to :user
#  belongs_to :admin
  has_many :comments, dependent: :destroy
  
  attachment :game_image
end
