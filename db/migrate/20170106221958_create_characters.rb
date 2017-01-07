class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :height
      t.integer :weight
      t.integer :race_id
      t.integer :hero_class_id
      t.integer :experience, default: 0, null: false

      t.timestamps
    end
  end
end
