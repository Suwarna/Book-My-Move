require 'spec_helper'

describe "feedbacks/new" do
  before(:each) do
    assign(:feedback, stub_model(Feedback,
      :feedback_message => "MyText",
      :vendor_id => ""
    ).as_new_record)
  end

  it "renders new feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedbacks_path, "post" do
      assert_select "textarea#feedback_feedback_message[name=?]", "feedback[feedback_message]"
      assert_select "input#feedback_vendor_id[name=?]", "feedback[vendor_id]"
    end
  end
end
