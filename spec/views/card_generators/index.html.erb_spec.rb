require 'rails_helper'

RSpec.describe "card_generators/index", type: :view do
  before(:each) do
    assign(:card_generators, [
      CardGenerator.create!(
        :name => "Name",
        :contents => "MyText"
      ),
      CardGenerator.create!(
        :name => "Name",
        :contents => "MyText"
      )
    ])
  end

  it "renders a list of card_generators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
