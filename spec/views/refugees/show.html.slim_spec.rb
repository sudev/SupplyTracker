require 'rails_helper'

RSpec.describe "refugees/show", type: :view do
  before(:each) do
    @refugee = assign(:refugee, Refugee.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Whatsapp Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Contact1/)
    expect(rendered).to match(/Contact2/)
    expect(rendered).to match(/Contact3/)
  end
end
