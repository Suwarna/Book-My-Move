require 'spec_helper'

describe "items/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :subcategory => nil,
      :item_name => "Item Name",
      :item_desc => "Item Desc",
      :item_image => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Item Name/)
    rendered.should match(/Item Desc/)
    rendered.should match(//)
  end
end
