require 'rails_helper'

RSpec.describe "dungeons/index", type: :view do
  before(:each) do
    assign(:dungeons, [
      Dungeon.create!(
        :name => "Name",
        :size => "Size",
        :themes => "Themes",
        :overview => "Overview",
        :dungeon_type => nil,
        :background => "Background",
        :detail => "Detail"
      ),
      Dungeon.create!(
        :name => "Name",
        :size => "Size",
        :themes => "Themes",
        :overview => "Overview",
        :dungeon_type => nil,
        :background => "Background",
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of dungeons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => "Themes".to_s, :count => 2
    assert_select "tr>td", :text => "Overview".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Background".to_s, :count => 2
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
