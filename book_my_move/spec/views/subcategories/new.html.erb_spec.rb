require 'spec_helper'

describe "subcategories/new" do
  before(:each) do
    assign(:subcategory, stub_model(Subcategory,
      :category => nil,
      :subcategory_name => "MyString",
      :subcategory_desc => "MyString"
    ).as_new_record)
  end

  it "renders new subcategory form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", subcategories_path, "post" do
      assert_select "input#subcategory_category[name=?]", "subcategory[category]"
      assert_select "input#subcategory_subcategory_name[name=?]", "subcategory[subcategory_name]"
      assert_select "input#subcategory_subcategory_desc[name=?]", "subcategory[subcategory_desc]"
    end
  end
end
