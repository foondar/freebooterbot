require 'rails_helper'

RSpec.describe "card_generators/new", type: :view do
  before(:each) do
    assign(:card_generator, CardGenerator.new(
      :name => "MyString",
      :contents => "MyText"
    ))
  end

  it "renders new card_generator form" do
    render

    assert_select "form[action=?][method=?]", card_generators_path, "post" do

      assert_select "input[name=?]", "card_generator[name]"

      assert_select "textarea[name=?]", "card_generator[contents]"
    end
  end
end
