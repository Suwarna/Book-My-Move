require 'spec_helper'

describe "registrations/new" do
  before(:each) do
    assign(:registration, stub_model(Registration,
      :registration_fname => "MyString",
      :registration_lname => "MyString",
      :registration_email => "MyString",
      :registration_mobile => "MyString",
      :registration_landline => "MyString",
      :registration_state => "MyString",
      :registration_district => "MyString",
      :registration_taluka => "MyString",
      :registration_city => "MyString",
      :registration_address => "MyString",
      :registration_pincode => "MyString",
      :registration_username => "MyString",
      :registration_password => "MyString",
      :registration_type => "MyString"
    ).as_new_record)
  end

  it "renders new registration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", registrations_path, "post" do
      assert_select "input#registration_registration_fname[name=?]", "registration[registration_fname]"
      assert_select "input#registration_registration_lname[name=?]", "registration[registration_lname]"
      assert_select "input#registration_registration_email[name=?]", "registration[registration_email]"
      assert_select "input#registration_registration_mobile[name=?]", "registration[registration_mobile]"
      assert_select "input#registration_registration_landline[name=?]", "registration[registration_landline]"
      assert_select "input#registration_registration_state[name=?]", "registration[registration_state]"
      assert_select "input#registration_registration_district[name=?]", "registration[registration_district]"
      assert_select "input#registration_registration_taluka[name=?]", "registration[registration_taluka]"
      assert_select "input#registration_registration_city[name=?]", "registration[registration_city]"
      assert_select "input#registration_registration_address[name=?]", "registration[registration_address]"
      assert_select "input#registration_registration_pincode[name=?]", "registration[registration_pincode]"
      assert_select "input#registration_registration_username[name=?]", "registration[registration_username]"
      assert_select "input#registration_registration_password[name=?]", "registration[registration_password]"
      assert_select "input#registration_registration_type[name=?]", "registration[registration_type]"
    end
  end
end
