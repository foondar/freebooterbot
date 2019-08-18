require 'rails_helper'

RSpec.describe "dungeon_types/index", type: :view do
  before(:each) do
    @dt1 = build(:dungeon_type)
    @dt2 = build(:dungeon_type)
    assign(:dungeon_types, [
      @dt1, @dt2
    ])
  end

  it "renders a list of dungeon_types" do
    render
    assert_select "tr>td", :text => @dt1.name.to_s, :count => 1
    assert_select "tr>td", :text => @dt2.name.to_s, :count => 1
    assert_select "tr>td", :text => @dt1.detail.to_s, :count => 1
    assert_select "tr>td", :text => @dt2.detail.to_s, :count => 1
    assert_select "tr>td", :text => @dt2.background.to_s, :count => 2
  end
end
