require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :subcategory => nil,
      :item_name => "MyString",
      :item_desc => "MyString",
      :item_image => ""
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_subcategory[name=?]", "item[subcategory]"
      assert_select "input#item_item_name[name=?]", "item[item_name]"
      assert_select "input#item_item_desc[name=?]", "item[item_desc]"
      assert_select "input#item_item_image[name=?]", "item[item_image]"
    end
  end
end
