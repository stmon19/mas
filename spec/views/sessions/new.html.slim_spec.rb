require 'rails_helper'

RSpec.describe "sessions/new", :type => :view do
  before(:each) do
    assign(:session, Session.new(
      :meeting_id => "",
      :name => "MyString",
      :code => "MyString",
      :category => "",
      :floor_name => "MyString",
      :capacity => "",
      :amount => "",
      :counter => ""
    ))
  end

  it "renders new session form" do
    render

    assert_select "form[action=?][method=?]", sessions_path, "post" do

      assert_select "input#session_meeting_id[name=?]", "session[meeting_id]"

      assert_select "input#session_name[name=?]", "session[name]"

      assert_select "input#session_code[name=?]", "session[code]"

      assert_select "input#session_category[name=?]", "session[category]"

      assert_select "input#session_floor_name[name=?]", "session[floor_name]"

      assert_select "input#session_capacity[name=?]", "session[capacity]"

      assert_select "input#session_amount[name=?]", "session[amount]"

      assert_select "input#session_counter[name=?]", "session[counter]"
    end
  end
end
