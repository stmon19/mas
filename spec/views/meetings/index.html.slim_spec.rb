require 'rails_helper'

RSpec.describe "meetings/index", :type => :view do
  before(:each) do
    assign(:meetings, [
      Meeting.create!(
        :name => "Name",
        :type => "Type",
        :place => "Place",
        :target => "MyText",
        :description => "MyText",
        :software => "Software",
        :location => "Location",
        :form => "Form",
        :note => "MyText"
      ),
      Meeting.create!(
        :name => "Name",
        :type => "Type",
        :place => "Place",
        :target => "MyText",
        :description => "MyText",
        :software => "Software",
        :location => "Location",
        :form => "Form",
        :note => "MyText"
      )
    ])
  end

  it "renders a list of meetings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Software".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Form".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
