require 'rails_helper'

RSpec.describe "sessions/index", :type => :view do
  before(:each) do
    assign(:sessions, [
      Session.create!(
        :meeting_id => "",
        :name => "Name",
        :code => "Code",
        :category => "",
        :floor_name => "Floor Name",
        :capacity => "",
        :amount => "",
        :counter => ""
      ),
      Session.create!(
        :meeting_id => "",
        :name => "Name",
        :code => "Code",
        :category => "",
        :floor_name => "Floor Name",
        :capacity => "",
        :amount => "",
        :counter => ""
      )
    ])
  end

  it "renders a list of sessions" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Floor Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
