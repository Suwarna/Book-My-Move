require 'spec_helper'

describe "registrations/show" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :registration_fname => "Registration Fname",
      :registration_lname => "Registration Lname",
      :registration_email => "Registration Email",
      :registration_mobile => "Registration Mobile",
      :registration_landline => "Registration Landline",
      :registration_state => "Registration State",
      :registration_district => "Registration District",
      :registration_taluka => "Registration Taluka",
      :registration_city => "Registration City",
      :registration_address => "Registration Address",
      :registration_pincode => "Registration Pincode",
      :registration_username => "Registration Username",
      :registration_password => "Registration Password",
      :registration_type => "Registration Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Registration Fname/)
    rendered.should match(/Registration Lname/)
    rendered.should match(/Registration Email/)
    rendered.should match(/Registration Mobile/)
    rendered.should match(/Registration Landline/)
    rendered.should match(/Registration State/)
    rendered.should match(/Registration District/)
    rendered.should match(/Registration Taluka/)
    rendered.should match(/Registration City/)
    rendered.should match(/Registration Address/)
    rendered.should match(/Registration Pincode/)
    rendered.should match(/Registration Username/)
    rendered.should match(/Registration Password/)
    rendered.should match(/Registration Type/)
  end
end
