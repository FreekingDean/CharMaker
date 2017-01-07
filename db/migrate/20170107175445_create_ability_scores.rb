class CreateAbilityScores < ActiveRecord::Migration[5.0]
  def change
    create_table :ability_scores do |t|
      t.integer :ability_score_type_id
      t.integer :score
      t.integer :character_id

      t.timestamps
    end
  end
end
