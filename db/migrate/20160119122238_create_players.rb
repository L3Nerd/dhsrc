class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.date :joined_at
      t.string :dsqv_nr
      t.date :license_expires
      t.references :user, index: true, foreign_key: true
      t.references :license, index: true, foreign_key: true
      t.references :age_class, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
