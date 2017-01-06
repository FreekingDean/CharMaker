class CreateAbilityScoreTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :ability_score_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
