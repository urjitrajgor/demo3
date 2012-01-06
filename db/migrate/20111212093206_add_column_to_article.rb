class AddColumnToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :user_id, :integer
    add_column :articles, :name, :string
    add_column :articles, :topic, :string
    add_column :articles, :description, :text
    add_column :articles, :published, :boolean
    add_column :articles, :rate, :integer

  end

  def self.down
    remove_column :articles, :user_id, :integer
    remove_column :articles, :name, :string
    remove_column :articles, :topic, :string
    remove_column :articles, :description, :text
    remove_column :articles, :published, :boolean
    remove_column :articles, :rate, :integer

  end
end
