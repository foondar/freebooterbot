require 'rails_helper'

RSpec.describe "dungeon_types/new", type: :view do
  before(:each) do
    assign(:dungeon_type, DungeonType.new(
      :name => "MyString",
      :background => "MyString",
      :detail => "MyString",
      :backgrounds => "MyText",
      :details => "MyText",
      :connections => "MyText",
      :common_areas => "MyText",
      :unique_areas => "MyText",
      :features => "MyText",
      :finds => "MyText",
      :dressings => "MyText"
    ))
  end

  it "renders new dungeon_type form" do
    render

    assert_select "form[action=?][method=?]", dungeon_types_path, "post" do

      assert_select "input[name=?]", "dungeon_type[name]"

      assert_select "input[name=?]", "dungeon_type[background]"

      assert_select "input[name=?]", "dungeon_type[detail]"

      assert_select "textarea[name=?]", "dungeon_type[backgrounds]"

      assert_select "textarea[name=?]", "dungeon_type[details]"

      assert_select "textarea[name=?]", "dungeon_type[connections]"

      assert_select "textarea[name=?]", "dungeon_type[common_areas]"

      assert_select "textarea[name=?]", "dungeon_type[unique_areas]"

      assert_select "textarea[name=?]", "dungeon_type[features]"

      assert_select "textarea[name=?]", "dungeon_type[finds]"

      assert_select "textarea[name=?]", "dungeon_type[dressings]"
    end
  end
end
