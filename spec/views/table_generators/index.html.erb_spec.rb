require 'rails_helper'

RSpec.describe "table_generators/index", type: :view do
  before(:each) do
    assign(:table_generators, [
      TableGenerator.create!(
        :name => "Name",
        :contents => "MyText"
      ),
      TableGenerator.create!(
        :name => "Name",
        :contents => "MyText"
      )
    ])
  end

  it "renders a list of table_generators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
