class AddSaltToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string
    add_column :users, :encrypted_password, :string
  end
  def self.down
    remove_column :users, :salt, :string
    remove_column :users, :encrypted_password, :string
  end
  
end
