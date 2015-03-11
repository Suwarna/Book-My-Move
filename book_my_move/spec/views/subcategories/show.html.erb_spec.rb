require 'spec_helper'

describe "subcategories/show" do
  before(:each) do
    @subcategory = assign(:subcategory, stub_model(Subcategory,
      :category => nil,
      :subcategory_name => "Subcategory Name",
      :subcategory_desc => "Subcategory Desc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Subcategory Name/)
    rendered.should match(/Subcategory Desc/)
  end
end
