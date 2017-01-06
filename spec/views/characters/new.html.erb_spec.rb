require 'rails_helper'

RSpec.describe "characters/new", type: :view do
  before(:each) do
    assign(:character, Character.new(
      :name => "MyString",
      :height => 1,
      :weight => 1,
      :race_id => 1,
      :hero_class_id => 1,
      :experience => 1
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "input#character_height[name=?]", "character[height]"

      assert_select "input#character_weight[name=?]", "character[weight]"

      assert_select "input#character_race_id[name=?]", "character[race_id]"

      assert_select "input#character_hero_class_id[name=?]", "character[hero_class_id]"

      assert_select "input#character_experience[name=?]", "character[experience]"
    end
  end
end
