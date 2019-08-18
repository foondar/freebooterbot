require 'rails_helper'

RSpec.describe "card_generators/show", type: :view do
  before(:each) do
    @card_generator = assign(:card_generator, CardGenerator.create!(
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
