require 'rails_helper'

RSpec.describe "dungeons/index", type: :view do
  before(:each) do
    @d1 = build(:dungeon)
    @d2 = build(:dungeon)
    assign(:dungeons, [
      @d1, @d2
    ])
  end

  it "renders a list of dungeons" do
    render
    assert_select "tr>td", :text => @d1.name.to_s, :count => 1
    assert_select "tr>td", :text => @d2.name.to_s, :count => 1
    assert_select "tr>td", :text => @d1.size.to_s, :count => 1
    assert_select "tr>td", :text => @d2.size.to_s, :count => 1
    assert_select "tr>td", :text => @d1.themes.to_s, :count => 1
    assert_select "tr>td", :text => @d2.themes.to_s, :count => 1
    assert_select "tr>td", :text => @d1.overview.to_s, :count => 1
    assert_select "tr>td", :text => @d2.overview.to_s, :count => 1
    assert_select "tr>td", :text => @d1.background.to_s, :count => 1
    assert_select "tr>td", :text => @d2.background.to_s, :count => 1
    assert_select "tr>td", :text => @d1.detail.to_s, :count => 1
    assert_select "tr>td", :text => @d2.detail.to_s, :count => 1
  end
end
