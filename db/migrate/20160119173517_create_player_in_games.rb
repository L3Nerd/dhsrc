class CreatePlayerInGames < ActiveRecord::Migration
  def change
    create_table :player_in_games do |t|
      t.references :player, index: true, foreign_key: true
      t.references :game_event, index: true, foreign_key: true
      t.integer :status, null: false, default: 0

      t.timestamps null: false
    end
  end
end
