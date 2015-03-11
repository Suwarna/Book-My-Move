require 'spec_helper'

describe "categories/new" do
  before(:each) do
    assign(:category, stub_model(Category,
      :category_name => "MyString",
      :category_desc => "MyString"
    ).as_new_record)
  end

  it "renders new category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categories_path, "post" do
      assert_select "input#category_category_name[name=?]", "category[category_name]"
      assert_select "input#category_category_desc[name=?]", "category[category_desc]"
    end
  end
end
