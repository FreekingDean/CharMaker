class Character < ApplicationRecord

  belongs_to :player
  belongs_to :hero_class
  belongs_to :background
  belongs_to :race
  belongs_to :alignment

  AbilityScoreType.all.each do |ability_score_type|
    has_one ability_score_type.symbolize_name, class_name: 'AbilityScore'
  end


  def level
    Leveling.experience_to_level(self.experience)
  end

  def level=(new_level)
    self.experience = Leveling.level_to_experience(new_level)
  end

  def player_name
    ap self.read_attribute(:player_name) || self.player.name
    self.read_attribute(:player_name) || self.player.name
  end

end
