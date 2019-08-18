require 'rails_helper'

RSpec.describe "table_generators/edit", type: :view do
  before(:each) do
    @table_generator = assign(:table_generator, TableGenerator.create!(
      :name => "MyString",
      :contents => "MyText"
    ))
  end

  it "renders the edit table_generator form" do
    render

    assert_select "form[action=?][method=?]", table_generator_path(@table_generator), "post" do

      assert_select "input[name=?]", "table_generator[name]"

      assert_select "textarea[name=?]", "table_generator[contents]"
    end
  end
end
