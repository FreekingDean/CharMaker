class CreateRaces < ActiveRecord::Migration[5.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :max_age
      t.decimal :max_height
      t.decimal :min_height
      t.string :size
      t.integer :build_type_id
      t.integer :speed

      t.timestamps
    end
  end
end
