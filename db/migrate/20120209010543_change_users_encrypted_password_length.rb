class ChangeUsersEncryptedPasswordLength < ActiveRecord::Migration
  def change
    change_column :users, :encrypted_password, :string, :limit => 255
  end
end
