require 'rails_helper'

RSpec.describe "dungeon_areas/index", type: :view do
  before(:each) do
    assign(:dungeon_areas, [
      DungeonArea.create!(),
      DungeonArea.create!()
    ])
  end

  it "renders a list of dungeon_areas" do
    render
  end
end
