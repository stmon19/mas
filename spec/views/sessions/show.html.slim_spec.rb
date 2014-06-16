require 'rails_helper'

RSpec.describe "sessions/show", :type => :view do
  before(:each) do
    @session = assign(:session, Session.create!(
      :meeting_id => "",
      :name => "Name",
      :code => "Code",
      :category => "",
      :floor_name => "Floor Name",
      :capacity => "",
      :amount => "",
      :counter => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Floor Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
