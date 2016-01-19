class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :name, null:false
      t.integer :weekday, null:false
      t.time :start_time, null:false
      t.time :end_time, null:false

      t.timestamps null: false
    end
  end
end
