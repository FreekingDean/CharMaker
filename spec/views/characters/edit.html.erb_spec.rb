require 'rails_helper'

RSpec.describe "characters/edit", type: :view do
  before(:each) do
    @character = assign(:character, Character.create!(
      :name => "MyString",
      :height => 1,
      :weight => 1,
      :race_id => 1,
      :hero_class_id => 1,
      :experience => 1
    ))
  end

  it "renders the edit character form" do
    render

    assert_select "form[action=?][method=?]", character_path(@character), "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "input#character_height[name=?]", "character[height]"

      assert_select "input#character_weight[name=?]", "character[weight]"

      assert_select "input#character_race_id[name=?]", "character[race_id]"

      assert_select "input#character_hero_class_id[name=?]", "character[hero_class_id]"

      assert_select "input#character_experience[name=?]", "character[experience]"
    end
  end
end
