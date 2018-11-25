require 'rails_helper'

RSpec.describe "dungeons/edit", type: :view do
  before(:each) do
    @dungeon = assign(:dungeon, Dungeon.create!(
      :name => "MyString",
      :size => "MyString",
      :themes => "MyString",
      :overview => "MyString",
      :dungeon_type => nil,
      :background => "MyString",
      :detail => "MyString"
    ))
  end

  it "renders the edit dungeon form" do
    render

    assert_select "form[action=?][method=?]", dungeon_path(@dungeon), "post" do

      assert_select "input[name=?]", "dungeon[name]"

      assert_select "input[name=?]", "dungeon[size]"

      assert_select "input[name=?]", "dungeon[themes]"

      assert_select "input[name=?]", "dungeon[overview]"

      assert_select "input[name=?]", "dungeon[dungeon_type_id]"

      assert_select "input[name=?]", "dungeon[background]"

      assert_select "input[name=?]", "dungeon[detail]"
    end
  end
end
