require 'rails_helper'

RSpec.describe "dungeons/new", type: :view do
  before(:each) do
    assign(:dungeon, build(:dungeon))
  end

  it "renders new dungeon form" do
    render

    assert_select "form[action=?][method=?]", dungeons_path, "post" do

      assert_select "input[name=?]", "dungeon[name]"

      assert_select "input[name=?]", "dungeon[size]"

      assert_select "input[name=?]", "dungeon[themes]"

      assert_select "input[name=?]", "dungeon[overview]"

      assert_select "input[name=?]", "dungeon[background]"

      assert_select "input[name=?]", "dungeon[detail]"
    end
  end
end
