require 'spec_helper'

describe "categories/index" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :category_name => "Category Name",
        :category_desc => "Category Desc"
      ),
      stub_model(Category,
        :category_name => "Category Name",
        :category_desc => "Category Desc"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Category Name".to_s, :count => 2
    assert_select "tr>td", :text => "Category Desc".to_s, :count => 2
  end
end
