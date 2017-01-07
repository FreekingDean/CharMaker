class AddAlignmentToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :alignment_id, :integer
  end
end
