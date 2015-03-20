require 'spec_helper'

describe "requirements/show" do
  before(:each) do
    @requirement = assign(:requirement, stub_model(Requirement,
      :client => nil,
      :requirement_from => "Requirement From",
      :requirement_to => "Requirement To",
      :requirement_lift => "Requirement Lift",
      :requirement_floor => 1,
      :requirement_parking => "Requirement Parking",
      :requirement_extra_service => "Requirement Extra Service"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Requirement From/)
    rendered.should match(/Requirement To/)
    rendered.should match(/Requirement Lift/)
    rendered.should match(/1/)
    rendered.should match(/Requirement Parking/)
    rendered.should match(/Requirement Extra Service/)
  end
end
