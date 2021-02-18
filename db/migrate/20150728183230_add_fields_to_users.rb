class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_index :users, :username
    add_column :users, :bio, :string
    add_column :users, :birth, :date
    add_column :users, :site, :string
  end
end
