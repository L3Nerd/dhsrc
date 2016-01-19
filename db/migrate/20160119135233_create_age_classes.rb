class CreateAgeClasses < ActiveRecord::Migration
  def change
    create_table :age_classes do |t|
      t.integer :from
      t.integer :to
      t.string :name

      t.timestamps null: false
    end
  end
end
