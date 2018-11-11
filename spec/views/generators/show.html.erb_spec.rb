require 'rails_helper'

RSpec.describe "generators/show", type: :view do
  before(:each) do
    @generator = assign(:generator, Generator.create!(
      :name => "Name",
      :contents => "Contents",
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contents/)
    expect(rendered).to match(/Type/)
  end
end
