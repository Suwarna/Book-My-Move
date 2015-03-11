require 'spec_helper'

describe "subcategories/index" do
  before(:each) do
    assign(:subcategories, [
      stub_model(Subcategory,
        :category => nil,
        :subcategory_name => "Subcategory Name",
        :subcategory_desc => "Subcategory Desc"
      ),
      stub_model(Subcategory,
        :category => nil,
        :subcategory_name => "Subcategory Name",
        :subcategory_desc => "Subcategory Desc"
      )
    ])
  end

  it "renders a list of subcategories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory Name".to_s, :count => 2
    assert_select "tr>td", :text => "Subcategory Desc".to_s, :count => 2
  end
end
