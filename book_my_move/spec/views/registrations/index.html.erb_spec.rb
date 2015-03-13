require 'spec_helper'

describe "registrations/index" do
  before(:each) do
    assign(:registrations, [
      stub_model(Registration,
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
      ),
      stub_model(Registration,
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
      )
    ])
  end

  it "renders a list of registrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Registration Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Email".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Landline".to_s, :count => 2
    assert_select "tr>td", :text => "Registration State".to_s, :count => 2
    assert_select "tr>td", :text => "Registration District".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Taluka".to_s, :count => 2
    assert_select "tr>td", :text => "Registration City".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Address".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Pincode".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Username".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Password".to_s, :count => 2
    assert_select "tr>td", :text => "Registration Type".to_s, :count => 2
  end
end
