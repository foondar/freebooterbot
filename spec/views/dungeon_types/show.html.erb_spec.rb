require 'rails_helper'

RSpec.describe "dungeon_types/show", type: :view do
  before(:each) do
    @dungeon_type = build(:dungeon_type)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@dungeon_type.name)
    expect(rendered).to match(@dungeon_type.background)
    expect(rendered).to match(@dungeon_type.detail)
  end
end
