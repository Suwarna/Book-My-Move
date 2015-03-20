require 'spec_helper'

describe "requirement_items/show" do
  before(:each) do
    @requirement_item = assign(:requirement_item, stub_model(RequirementItem,
      :requirement => nil,
      :item => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
