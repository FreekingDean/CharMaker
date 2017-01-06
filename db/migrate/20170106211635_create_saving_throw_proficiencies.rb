class CreateSavingThrowProficiencies < ActiveRecord::Migration[5.0]
  def change
    create_table :saving_throw_proficiencies do |t|
      t.integer :ability_score_type_id
      t.integer :proficientable_id
      t.string :proficientable_type

      t.timestamps
    end
  end
end
