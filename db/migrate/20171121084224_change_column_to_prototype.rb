class ChangeColumnToPrototype < ActiveRecord::Migration
  def change
    change_column :prototypes, :catch_copy, :string, null: false
    change_column :prototypes, :concept, :string, null: false    
  end
end
