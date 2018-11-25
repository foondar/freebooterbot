require 'rails_helper'

RSpec.describe "dungeon_types/index", type: :view do
  before(:each) do
    assign(:dungeon_types, [
      DungeonType.create!(
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
      ),
      DungeonType.create!(
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
      )
    ])
  end

  it "renders a list of dungeon_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Background".to_s, :count => 2
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
