require 'rails_helper'

RSpec.describe "meetings/new", :type => :view do
  before(:each) do
    assign(:meeting, Meeting.new(
      :name => "MyString",
      :type => "",
      :place => "MyString",
      :target => "MyText",
      :description => "MyText",
      :software => "MyString",
      :location => "MyString",
      :form => "MyString",
      :note => "MyText"
    ))
  end

  it "renders new meeting form" do
    render

    assert_select "form[action=?][method=?]", meetings_path, "post" do

      assert_select "input#meeting_name[name=?]", "meeting[name]"

      assert_select "input#meeting_type[name=?]", "meeting[type]"

      assert_select "input#meeting_place[name=?]", "meeting[place]"

      assert_select "textarea#meeting_target[name=?]", "meeting[target]"

      assert_select "textarea#meeting_description[name=?]", "meeting[description]"

      assert_select "input#meeting_software[name=?]", "meeting[software]"

      assert_select "input#meeting_location[name=?]", "meeting[location]"

      assert_select "input#meeting_form[name=?]", "meeting[form]"

      assert_select "textarea#meeting_note[name=?]", "meeting[note]"
    end
  end
end
