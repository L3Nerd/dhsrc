class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street
      t.string :plz
      t.string :city
      t.string :maps_link

      t.timestamps null: false
    end
  end
end
