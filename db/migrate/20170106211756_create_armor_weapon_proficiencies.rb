class CreateArmorWeaponProficiencies < ActiveRecord::Migration[5.0]
  def change
    create_table :armor_weapon_proficiencies do |t|
      t.integer :item_id
      t.integer :proficientable_id
      t.string :proficientable_type

      t.timestamps
    end
  end
end
