class CreateLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :dsqv_name
      t.references :license, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
