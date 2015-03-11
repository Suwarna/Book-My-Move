require 'spec_helper'

describe "admins/edit" do
  before(:each) do
    @admin = assign(:admin, stub_model(Admin,
      :admin_fname => "MyString",
      :admin_lname => "MyString",
      :admin_mobile => "MyString",
      :admin_username => "MyString",
      :admin_password => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do
      assert_select "input#admin_admin_fname[name=?]", "admin[admin_fname]"
      assert_select "input#admin_admin_lname[name=?]", "admin[admin_lname]"
      assert_select "input#admin_admin_mobile[name=?]", "admin[admin_mobile]"
      assert_select "input#admin_admin_username[name=?]", "admin[admin_username]"
      assert_select "input#admin_admin_password[name=?]", "admin[admin_password]"
    end
  end
end
