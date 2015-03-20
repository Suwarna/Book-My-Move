require 'spec_helper'

describe "requirement_items/index" do
  before(:each) do
    assign(:requirement_items, [
      stub_model(RequirementItem,
        :requirement => nil,
        :item => nil
      ),
      stub_model(RequirementItem,
        :requirement => nil,
        :item => nil
      )
    ])
  end

  it "renders a list of requirement_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
