require 'rails_helper'

RSpec.describe "inventories/index", type: :view do
  before(:each) do
    assign(:inventories, [
      Inventory.create!(
        :item_category => nil,
        :item_type => nil,
        :item_subtype => nil,
        :item_unit => nil,
        :quantity => 2.5,
        :area => nil,
        :latitude => 3.5,
        :longitude => 4.5,
        :address => "MyText",
        :initial_quantity => 5.5,
        :available_quantity => 6.5,
        :source => "Source",
        :volunteer_id => 7,
        :contact_number => "Contact Number",
        :contact_name => "Contact Name"
      ),
      Inventory.create!(
        :item_category => nil,
        :item_type => nil,
        :item_subtype => nil,
        :item_unit => nil,
        :quantity => 2.5,
        :area => nil,
        :latitude => 3.5,
        :longitude => 4.5,
        :address => "MyText",
        :initial_quantity => 5.5,
        :available_quantity => 6.5,
        :source => "Source",
        :volunteer_id => 7,
        :contact_number => "Contact Number",
        :contact_name => "Contact Name"
      )
    ])
  end

  it "renders a list of inventories" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => "Contact Number".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
  end
end
