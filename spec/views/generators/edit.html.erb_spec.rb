require 'rails_helper'

RSpec.describe "generators/edit", type: :view do
  before(:each) do
    @generator = assign(:generator, Generator.create!(
      :name => "MyString",
      :contents => "MyString",
      :type => ""
    ))
  end

  it "renders the edit generator form" do
    render

    assert_select "form[action=?][method=?]", generator_path(@generator), "post" do

      assert_select "input[name=?]", "generator[name]"

      assert_select "input[name=?]", "generator[contents]"

      assert_select "input[name=?]", "generator[type]"
    end
  end
end
