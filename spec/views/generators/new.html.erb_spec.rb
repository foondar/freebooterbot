require 'rails_helper'

RSpec.describe "generators/new", type: :view do
  before(:each) do
    assign(:generator, Generator.new(
      :name => "MyString",
      :contents => "MyString",
      :type => ""
    ))
  end

  it "renders new generator form" do
    render

    assert_select "form[action=?][method=?]", generators_path, "post" do

      assert_select "input[name=?]", "generator[name]"

      assert_select "input[name=?]", "generator[contents]"

      assert_select "input[name=?]", "generator[type]"
    end
  end
end
