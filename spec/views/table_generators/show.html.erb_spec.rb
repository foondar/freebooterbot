require 'rails_helper'

RSpec.describe "table_generators/show", type: :view do
  before(:each) do
    @table_generator = assign(:table_generator, TableGenerator.create!(
      :name => "Name",
      :contents => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
