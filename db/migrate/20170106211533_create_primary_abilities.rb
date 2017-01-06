class CreatePrimaryAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :primary_abilities do |t|
      t.integer :ability_score_type_id
      t.string :primary_abilityable_type
      t.integer :primary_abilityable_id

      t.timestamps
    end
  end
end
