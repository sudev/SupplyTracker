require 'rails_helper'

RSpec.describe "refugees/index", type: :view do
  before(:each) do
    assign(:refugees, [
      Refugee.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :location => "Location",
        :address => "MyText",
        :phone_number => "Phone Number",
        :whatsapp_number => "Whatsapp Number",
        :email => "Email",
        :relief_camp => nil,
        :contact1 => "Contact1",
        :contact2 => "Contact2",
        :contact3 => "Contact3"
      ),
      Refugee.create!(
        :name => "Name",
        :latitude => "9.99",
        :longitude => "9.99",
        :location => "Location",
        :address => "MyText",
        :phone_number => "Phone Number",
        :whatsapp_number => "Whatsapp Number",
        :email => "Email",
        :relief_camp => nil,
        :contact1 => "Contact1",
        :contact2 => "Contact2",
        :contact3 => "Contact3"
      )
    ])
  end

  it "renders a list of refugees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Whatsapp Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Contact1".to_s, :count => 2
    assert_select "tr>td", :text => "Contact2".to_s, :count => 2
    assert_select "tr>td", :text => "Contact3".to_s, :count => 2
  end
end
