class Game < ApplicationRecord
  belongs_to :user

  has_many :comments,  dependent: :destroy
  has_many :favorites, dependent: :destroy

  attachment :game_image

  def change
    create_table :games do |t|
      t.integer :price, null: false
      t.timestamps
    end
  end

  ransacker :favorites_count do
    query = '(SELECT COUNT(favorites.game_id) FROM favorites where favorites.game_id = games.id GROUP BY favorites.game_id)'
    Arel.sql(query)
  end

  ransacker :rates_average do
    query = '(SELECT AVG(comments.rate) FROM comments where comments.game_id = games.id )'
    Arel.sql(query)
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
