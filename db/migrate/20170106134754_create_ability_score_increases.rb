class CreateAbilityScoreIncreases < ActiveRecord::Migration[5.0]
  def change
    create_table :ability_score_increases do |t|
      t.integer :ability_score_type_id
      t.integer :increase_amount
      t.string :special_increase
      t.string :ability_score_increaseable_type
      t.integer :ability_score_increaseable_id

      t.timestamps
    end
  end
end
