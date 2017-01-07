module CharactersHelper
  CHARACTER_BUILDER_PATH = 'characters/character_builder'
  CHARACTER_BUILDER_STEPS = {
    1 => 'choose_race',
    2 => 'choose_class',
  }

  def render_character_builder_step(character, form)
    render("#{CHARACTER_BUILDER_PATH}/#{CHARACTER_BUILDER_STEPS[character.step]}", f: form)
  end
end
