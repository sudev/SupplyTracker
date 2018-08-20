require 'rails_helper'

RSpec.describe "refugees/new", type: :view do
  before(:each) do
    assign(:refugee, Refugee.new(
      :name => "MyString",
      :latitude => "9.99",
      :longitude => "9.99",
      :location => "MyString",
      :address => "MyText",
      :phone_number => "MyString",
      :whatsapp_number => "MyString",
      :email => "MyString",
      :relief_camp => nil,
      :contact1 => "MyString",
      :contact2 => "MyString",
      :contact3 => "MyString"
    ))
  end

  it "renders new refugee form" do
    render

    assert_select "form[action=?][method=?]", refugees_path, "post" do

      assert_select "input[name=?]", "refugee[name]"

      assert_select "input[name=?]", "refugee[latitude]"

      assert_select "input[name=?]", "refugee[longitude]"

      assert_select "input[name=?]", "refugee[location]"

      assert_select "textarea[name=?]", "refugee[address]"

      assert_select "input[name=?]", "refugee[phone_number]"

      assert_select "input[name=?]", "refugee[whatsapp_number]"

      assert_select "input[name=?]", "refugee[email]"

      assert_select "input[name=?]", "refugee[relief_camp_id]"

      assert_select "input[name=?]", "refugee[contact1]"

      assert_select "input[name=?]", "refugee[contact2]"

      assert_select "input[name=?]", "refugee[contact3]"
    end
  end
end
