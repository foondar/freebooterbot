require 'rails_helper'

RSpec.describe "dungeon_areas/edit", type: :view do
  before(:each) do
    @dungeon_area = assign(:dungeon_area, DungeonArea.create!())
  end

  it "renders the edit dungeon_area form" do
    render

    assert_select "form[action=?][method=?]", dungeon_area_path(@dungeon_area), "post" do
    end
  end
end
