require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :subcategory => nil,
        :item_name => "Item Name",
        :item_desc => "Item Desc",
        :item_image => ""
      ),
      stub_model(Item,
        :subcategory => nil,
        :item_name => "Item Name",
        :item_desc => "Item Desc",
        :item_image => ""
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Item Name".to_s, :count => 2
    assert_select "tr>td", :text => "Item Desc".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
