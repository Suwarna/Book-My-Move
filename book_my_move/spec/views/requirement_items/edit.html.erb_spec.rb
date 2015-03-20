require 'spec_helper'

describe "requirement_items/edit" do
  before(:each) do
    @requirement_item = assign(:requirement_item, stub_model(RequirementItem,
      :requirement => nil,
      :item => nil
    ))
  end

  it "renders the edit requirement_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requirement_item_path(@requirement_item), "post" do
      assert_select "input#requirement_item_requirement[name=?]", "requirement_item[requirement]"
      assert_select "input#requirement_item_item[name=?]", "requirement_item[item]"
    end
  end
end
