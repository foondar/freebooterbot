require 'rails_helper'

RSpec.describe "dungeon_types/show", type: :view do
  before(:each) do
    @dungeon_type = assign(:dungeon_type, DungeonType.create!(
      :name => "Name",
      :background => "Background",
      :detail => "Detail",
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Background/)
    expect(rendered).to match(/Detail/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
