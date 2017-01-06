class CreateLearnedLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :learned_languages do |t|
      t.integer :language_id
      t.string :languageable_type
      t.integer :languageable_id

      t.timestamps
    end
  end
end
