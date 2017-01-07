class AddBackgroundToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :background_id, :integer
  end
end
