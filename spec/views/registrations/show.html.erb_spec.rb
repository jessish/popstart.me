require 'spec_helper'

describe "registrations/show" do
  before(:each) do
    @registration = assign(:registration, stub_model(Registration,
      :name => "Name",
      :email => "Email",
      :phone => "Phone",
      :comment => "Comment",
      :vendortype => "Vendortype",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Comment/)
    rendered.should match(/Vendortype/)
    rendered.should match(/Location/)
  end
end
