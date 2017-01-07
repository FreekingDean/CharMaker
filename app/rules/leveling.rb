class Leveling
  EXPERIENCE_MAX = 335000
  LEVEL_MAX = 20
  LEVEL_EXPERIENCE_MAP = Hash.new(0).merge({
    1  => 0,
    2  => 300,
    3  => 900,
    4  => 2700,
    5  => 6500,
    6  => 14000,
    7  => 23000,
    8  => 34000,
    9  => 48000,
    10 => 64000,
    11 => 85000,
    12 => 100000,
    13 => 120000,
    14 => 140000,
    15 => 165000,
    16 => 195000,
    17 => 225000,
    18 => 265000,
    19 => 305000,
    20 => EXPERIENCE_MAX
  })

  def self.experience_to_level(current_experience)
    LEVEL_EXPERIENCE_MAP.detect do |level, min_experience|
      current_experience >= min_experience
    end[1]
  end

  def self.level_to_experience(level)
    return EXPERIENCE_MAX if level > LEVEL_MAX
    LEVEL_EXPERIENCE_MAP[level]
  end
end
