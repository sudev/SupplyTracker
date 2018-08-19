require 'rails_helper'

RSpec.describe "inventories/show", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :item_category => nil,
      :item_type => nil,
      :item_sub_type => nil,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/Contact Number/)
    expect(rendered).to match(/Contact Name/)
  end
end
