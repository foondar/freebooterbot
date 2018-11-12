require 'rails_helper'

RSpec.describe "table_generators/new", type: :view do
  before(:each) do
    assign(:table_generator, TableGenerator.new(
      :name => "MyString",
      :contents => "MyText"
    ))
  end

  it "renders new table_generator form" do
    render

    assert_select "form[action=?][method=?]", table_generators_path, "post" do

      assert_select "input[name=?]", "table_generator[name]"

      assert_select "textarea[name=?]", "table_generator[contents]"
    end
  end
end
