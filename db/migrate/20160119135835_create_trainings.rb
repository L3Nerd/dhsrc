class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name
      t.integer :weekday
      t.time :start_time
      t.time :end_time

      t.timestamps null: false
    end
  end
end
