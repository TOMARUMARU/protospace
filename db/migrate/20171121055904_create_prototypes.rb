class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.string :catch_copy
      t.string :concept
      t.references :user, foreign_key: true
      t.integer :likes_count, default: 0

      t.timestamps null: false
    end
  end
end
