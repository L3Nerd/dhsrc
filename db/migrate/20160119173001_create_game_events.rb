class CreateGameEvents < ActiveRecord::Migration
  def change
    create_table :game_events do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time
      t.references :team, index: true, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps null: false

      t.index :start_time
    end
  end
end
