require 'spec_helper'

describe "feedbacks/edit" do
  before(:each) do
    @feedback = assign(:feedback, stub_model(Feedback,
      :feedback_message => "MyText",
      :vendor_id => ""
    ))
  end

  it "renders the edit feedback form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feedback_path(@feedback), "post" do
      assert_select "textarea#feedback_feedback_message[name=?]", "feedback[feedback_message]"
      assert_select "input#feedback_vendor_id[name=?]", "feedback[vendor_id]"
    end
  end
end
