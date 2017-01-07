# This file should contain all the record creation needed to
# seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([
#     { name: 'Star Wars' }, { name: 'Lord of the Rings' }
#   ])
#   Character.create(name: 'Luke', movie: movies.first)
#
Race.create([
  { name: 'Dwarf' },
  { name: 'Elf' },
  { name: 'Halfling' },
  { name: 'Human' },
  { name: 'Dragonborn' },
  { name: 'Gnome' },
  { name: 'Half-Elf' },
  { name: 'Half-Orc' },
  { name: 'Tiefling' }
])

HeroClass.create([
  { name: 'Barbarian' },
  { name: 'Bard' },
  { name: 'Cleric' },
  { name: 'Druid' },
  { name: 'Fighter' },
  { name: 'Monk' },
  { name: 'Paladin' },
  { name: 'Ranger' },
  { name: 'Rogue' },
  { name: 'Sourcerer' },
  { name: 'Warlock' },
  { name: 'Wizard' }
])

Alignment.create([
  { name: 'Lawful-Good' },
  { name: 'Lawful-Neutral' },
  { name: 'Lawful-Evil' },
  { name: 'Neutral-Good' },
  { name: 'Neutral-Neutral' },
  { name: 'Neutral-Evil' },
  { name: 'Chaotic-Good' },
  { name: 'Chaotic-Neutral' },
  { name: 'Chaotic-Evil' }
])

Background.create([
  { name: 'Acolyte' },
  { name: 'Charlatan' },
  { name: 'Criminal' },
  { name: 'Entertainer' },
  { name: 'Folk Hero' },
  { name: 'Guild Artisan' },
  { name: 'Hermit' },
  { name: 'Noble' },
  { name: 'Outlander' },
  { name: 'Sage' },
  { name: 'Sailor' },
  { name: 'Soldier' },
  { name: 'Urchin' }
])

AbilityScoreType.create([
  { name: 'Strength' },
  { name: 'Dexterity' },
  { name: 'Constitution' },
  { name: 'Intelligence' },
  { name: 'Wisdom' },
  { name: 'Charisma' }
])
