require 'spec_helper'

describe "registrations/index" do
  before(:each) do
    assign(:registrations, [
      stub_model(Registration,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :comment => "Comment",
        :vendortype => "Vendortype",
        :location => "Location"
      ),
      stub_model(Registration,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :comment => "Comment",
        :vendortype => "Vendortype",
        :location => "Location"
      )
    ])
  end

  it "renders a list of registrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Vendortype".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
