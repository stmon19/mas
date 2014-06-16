require 'rails_helper'

RSpec.describe "meetings/show", :type => :view do
  before(:each) do
    @meeting = assign(:meeting, Meeting.create!(
      :name => "Name",
      :type => "Type",
      :place => "Place",
      :target => "MyText",
      :description => "MyText",
      :software => "Software",
      :location => "Location",
      :form => "Form",
      :note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Place/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Software/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Form/)
    expect(rendered).to match(/MyText/)
  end
end
