class AddColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :skills, :string
    add_column :users, :city, :string
    add_column :users, :location, :string
    add_column :users, :zip_code, :integer

  end

  def self.down
    remove_column :users, :first_name, :string
    remove_column :users, :last_name, :string
    remove_column :users, :date_of_birth, :date
    remove_column :users, :skills, :string
    remove_column :users, :city, :string
    remove_column :users, :location, :string
    remove_column :users, :zip_code, :integer

  end
end
