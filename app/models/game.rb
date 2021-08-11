class Game < ApplicationRecord
  belongs_to :user
#  belongs_to :admin

  attachment :game_image
end
