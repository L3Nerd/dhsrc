class CreateTrainingEvents < ActiveRecord::Migration
  def change
    create_table :training_events do |t|
      t.date :day, null: false
      t.date :lock_date, null: false
      t.integer :players_count, default: 0, null: false

      t.timestamps null: false

      t.index :day
    end
  end
end
