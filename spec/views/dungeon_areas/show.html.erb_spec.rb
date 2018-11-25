require 'rails_helper'

RSpec.describe "dungeon_areas/show", type: :view do
  before(:each) do
    @dungeon_area = assign(:dungeon_area, DungeonArea.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
