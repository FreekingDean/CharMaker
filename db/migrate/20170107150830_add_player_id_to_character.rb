class AddPlayerIdToCharacter < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :player_id, :integer
  end
end
