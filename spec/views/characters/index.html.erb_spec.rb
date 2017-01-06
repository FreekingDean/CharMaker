require 'rails_helper'

RSpec.describe "characters/index", type: :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :height => 2,
        :weight => 3,
        :race_id => 4,
        :hero_class_id => 5,
        :experience => 6
      ),
      Character.create!(
        :name => "Name",
        :height => 2,
        :weight => 3,
        :race_id => 4,
        :hero_class_id => 5,
        :experience => 6
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
