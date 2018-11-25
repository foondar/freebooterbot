require 'rails_helper'

RSpec.describe "dungeon_areas/new", type: :view do
  before(:each) do
    assign(:dungeon_area, DungeonArea.new())
  end

  it "renders new dungeon_area form" do
    render

    assert_select "form[action=?][method=?]", dungeon_areas_path, "post" do
    end
  end
end
