class AbilityScoreType < ApplicationRecord
  def symbolize_name
    self.name.gsub(/\ /, '_').downcase.to_sym
  end
end
