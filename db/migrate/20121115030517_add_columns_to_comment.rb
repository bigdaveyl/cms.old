class AddColumnsToComment < ActiveRecord::Migration
  def change
    add_column :comments, :name_url, :string
    add_column :comments, :name_email, :string
    add_column :comments, :user_ip, :string
    add_column :comments, :user_agent, :string
    add_column :comments, :referrer, :string
    add_column :comments, :permalink, :string
  end
end
