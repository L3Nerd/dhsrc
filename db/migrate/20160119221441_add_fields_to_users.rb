class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :street, :string
    add_column :users, :plz, :string
    add_column :users, :city, :string
    add_column :users, :phone, :string
    add_column :users, :birthdate, :date
  end
end
