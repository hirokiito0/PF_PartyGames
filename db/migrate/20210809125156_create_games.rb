class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string  :game_title,        null: false, default: ""
      t.string    :game_introduction, null: false, default: ""
      t.string    :recommended,       null: false, default: ""
      t.string  :game_image
      t.integer :price,             null: false, default: ""

      t.timestamps
    end
  end
end
