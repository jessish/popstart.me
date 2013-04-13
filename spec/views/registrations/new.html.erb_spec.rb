require 'spec_helper'

describe "registrations/new" do
  before(:each) do
    assign(:registration, stub_model(Registration,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :comment => "MyString",
      :vendortype => "MyString",
      :location => "MyString"
    ).as_new_record)
  end

  it "renders new registration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => registrations_path, :method => "post" do
      assert_select "input#registration_name", :name => "registration[name]"
      assert_select "input#registration_email", :name => "registration[email]"
      assert_select "input#registration_phone", :name => "registration[phone]"
      assert_select "input#registration_comment", :name => "registration[comment]"
      assert_select "input#registration_vendortype", :name => "registration[vendortype]"
      assert_select "input#registration_location", :name => "registration[location]"
    end
  end
end
