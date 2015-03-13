require 'spec_helper'

describe "admins/show" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :admin_fname => "Admin Fname",
      :admin_lname => "Admin Lname",
      :admin_mobile => "Admin Mobile",
      :admin_username => "Admin Username",
      :admin_password => "Admin Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Admin Fname/)
    rendered.should match(/Admin Lname/)
    rendered.should match(/Admin Mobile/)
    rendered.should match(/Admin Username/)
    rendered.should match(/Admin Password/)
  end
end
