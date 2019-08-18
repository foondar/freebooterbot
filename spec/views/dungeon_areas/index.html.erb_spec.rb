require 'rails_helper'

RSpec.describe "dungeon_areas/index", type: :view do
  before(:each) do
    @da1 = build(:dungeon_area)
    @da2 = build(:dungeon_area)
    assign(:dungeon_areas, [
      @d1, @d2
    ])
  end

  it "renders a list of dungeon_areas" do
    render
  end
end
