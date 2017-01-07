class AddPlayerNameToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :player_name, :string
  end
end
