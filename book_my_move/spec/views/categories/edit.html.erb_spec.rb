require 'spec_helper'

describe "categories/edit" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :category_name => "MyString",
      :category_desc => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", category_path(@category), "post" do
      assert_select "input#category_category_name[name=?]", "category[category_name]"
      assert_select "input#category_category_desc[name=?]", "category[category_desc]"
    end
  end
end
