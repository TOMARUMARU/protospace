class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :avatar, :string
    add_column :users, :member, :string
    add_column :users, :profile, :text
    add_column :users, :works, :string
  end
end
