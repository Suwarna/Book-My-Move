require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :subcategory => nil,
      :item_name => "MyString",
      :item_desc => "MyString",
      :item_image => ""
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_subcategory[name=?]", "item[subcategory]"
      assert_select "input#item_item_name[name=?]", "item[item_name]"
      assert_select "input#item_item_desc[name=?]", "item[item_desc]"
      assert_select "input#item_item_image[name=?]", "item[item_image]"
    end
  end
end
