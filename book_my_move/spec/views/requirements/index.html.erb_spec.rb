require 'spec_helper'

describe "requirements/index" do
  before(:each) do
    assign(:requirements, [
      stub_model(Requirement,
        :client => nil,
        :requirement_from => "Requirement From",
        :requirement_to => "Requirement To",
        :requirement_lift => "Requirement Lift",
        :requirement_floor => 1,
        :requirement_parking => "Requirement Parking",
        :requirement_extra_service => "Requirement Extra Service"
      ),
      stub_model(Requirement,
        :client => nil,
        :requirement_from => "Requirement From",
        :requirement_to => "Requirement To",
        :requirement_lift => "Requirement Lift",
        :requirement_floor => 1,
        :requirement_parking => "Requirement Parking",
        :requirement_extra_service => "Requirement Extra Service"
      )
    ])
  end

  it "renders a list of requirements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Requirement From".to_s, :count => 2
    assert_select "tr>td", :text => "Requirement To".to_s, :count => 2
    assert_select "tr>td", :text => "Requirement Lift".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Requirement Parking".to_s, :count => 2
    assert_select "tr>td", :text => "Requirement Extra Service".to_s, :count => 2
  end
end
