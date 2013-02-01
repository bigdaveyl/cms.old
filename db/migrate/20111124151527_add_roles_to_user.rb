class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => false, :null => false, :nill => false
    add_column :users, :blogger, :boolean, :default => false, :null => false, :nill => false
    add_column :users, :photos, :boolean, :default => false, :null => false, :nill => false
    add_column :users, :username, :string

    add_index :users, :username, :unique => true
  end
end
