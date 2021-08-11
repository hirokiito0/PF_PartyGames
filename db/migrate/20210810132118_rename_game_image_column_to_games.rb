class RenameGameImageColumnToGames < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :game_image, :game_image_id
  end
end
