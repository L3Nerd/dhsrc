class CreatePlayerInTeams < ActiveRecord::Migration
  def change
    create_table :player_in_teams do |t|
      t.references :player, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true
      t.integer :position, null: false, default: 1
      t.boolean :is_captain

      t.timestamps null: false
    end
  end
end
