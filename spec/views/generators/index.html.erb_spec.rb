require 'rails_helper'

RSpec.describe "generators/index", type: :view do
  before(:each) do
    assign(:generators, [
      Generator.create!(
        :name => "Name",
        :contents => "Contents",
        :type => "Type"
      ),
      Generator.create!(
        :name => "Name",
        :contents => "Contents",
        :type => "Type"
      )
    ])
  end

  it "renders a list of generators" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contents".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
