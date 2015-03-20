require 'spec_helper'

describe "requirements/new" do
  before(:each) do
    assign(:requirement, stub_model(Requirement,
      :client => nil,
      :requirement_from => "MyString",
      :requirement_to => "MyString",
      :requirement_lift => "MyString",
      :requirement_floor => 1,
      :requirement_parking => "MyString",
      :requirement_extra_service => "MyString"
    ).as_new_record)
  end

  it "renders new requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", requirements_path, "post" do
      assert_select "input#requirement_client[name=?]", "requirement[client]"
      assert_select "input#requirement_requirement_from[name=?]", "requirement[requirement_from]"
      assert_select "input#requirement_requirement_to[name=?]", "requirement[requirement_to]"
      assert_select "input#requirement_requirement_lift[name=?]", "requirement[requirement_lift]"
      assert_select "input#requirement_requirement_floor[name=?]", "requirement[requirement_floor]"
      assert_select "input#requirement_requirement_parking[name=?]", "requirement[requirement_parking]"
      assert_select "input#requirement_requirement_extra_service[name=?]", "requirement[requirement_extra_service]"
    end
  end
end
