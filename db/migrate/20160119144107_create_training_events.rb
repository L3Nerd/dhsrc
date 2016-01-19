class CreateTrainingEvents < ActiveRecord::Migration
  def change
    create_table :training_events do |t|
      t.date :day, null: false
      t.integer :players_count, default: 0, null: false

      t.timestamps null: false
    end
  end
end
