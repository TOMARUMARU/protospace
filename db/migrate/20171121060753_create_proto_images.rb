class CreateProtoImages < ActiveRecord::Migration
  def change
    create_table :proto_images do |t|
      t.text :image, null: false
      t.references :prototype, foreign_key: true
      t.integer :status, default: 0, limit: 1, null: false

      t.timestamps null: false
    end
  end
end
