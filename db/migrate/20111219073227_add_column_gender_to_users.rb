class AddColumnGenderToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :gender, :string
  end

  def self.down
    remove_column :users, :gender, :string
  end
end
