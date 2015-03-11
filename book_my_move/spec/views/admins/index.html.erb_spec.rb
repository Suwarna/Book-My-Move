require 'spec_helper'

describe "admins/index" do
  before(:each) do
    assign(:admins, [
      stub_model(Admin,
        :admin_fname => "Admin Fname",
        :admin_lname => "Admin Lname",
        :admin_mobile => "Admin Mobile",
        :admin_username => "Admin Username",
        :admin_password => "Admin Password"
      ),
      stub_model(Admin,
        :admin_fname => "Admin Fname",
        :admin_lname => "Admin Lname",
        :admin_mobile => "Admin Mobile",
        :admin_username => "Admin Username",
        :admin_password => "Admin Password"
      )
    ])
  end

  it "renders a list of admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Admin Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Admin Lname".to_s, :count => 2
    assert_select "tr>td", :text => "Admin Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Admin Username".to_s, :count => 2
    assert_select "tr>td", :text => "Admin Password".to_s, :count => 2
  end
end
