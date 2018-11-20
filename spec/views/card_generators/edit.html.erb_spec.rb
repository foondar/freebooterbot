require 'rails_helper'

RSpec.describe "card_generators/edit", type: :view do
  before(:each) do
    @card_generator = assign(:card_generator, CardGenerator.create!(
      :name => "MyString",
      :contents => "MyText"
    ))
  end

  it "renders the edit card_generator form" do
    render

    assert_select "form[action=?][method=?]", card_generator_path(@card_generator), "post" do

      assert_select "input[name=?]", "card_generator[name]"

      assert_select "textarea[name=?]", "card_generator[contents]"
    end
  end
end
