require 'rails_helper'

RSpec.describe "dungeons/show", type: :view do
  before(:each) do
    @dungeon = build(:dungeon)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/Themes/)
    expect(rendered).to match(/Overview/)
    expect(rendered).to match(/Background/)
    expect(rendered).to match(/Detail/)
    expect(rendered).to match(@dungeon.name)
    expect(rendered).to match(@dungeon.themes)
    expect(rendered).to match(@dungeon.detail)
  end
end
