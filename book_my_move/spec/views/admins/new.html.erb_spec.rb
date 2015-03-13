require 'spec_helper'

describe "admins/new" do
  before(:each) do
    assign(:admin, stub_model(Admin,
      :admin_fname => "MyString",
      :admin_lname => "MyString",
      :admin_mobile => "MyString",
      :admin_username => "MyString",
      :admin_password => "MyString"
    ).as_new_record)
  end

  it "renders new admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admins_path, "post" do
      assert_select "input#admin_admin_fname[name=?]", "admin[admin_fname]"
      assert_select "input#admin_admin_lname[name=?]", "admin[admin_lname]"
      assert_select "input#admin_admin_mobile[name=?]", "admin[admin_mobile]"
      assert_select "input#admin_admin_username[name=?]", "admin[admin_username]"
      assert_select "input#admin_admin_password[name=?]", "admin[admin_password]"
    end
  end
end
