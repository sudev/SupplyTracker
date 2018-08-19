require 'rails_helper'

RSpec.describe "inventories/edit", type: :view do
  before(:each) do
    @inventory = assign(:inventory, Inventory.create!(
      :item_category => nil,
      :item_type => nil,
      :item_sub_type => nil,
      :item_unit => nil,
      :quantity => 1.5,
      :area => nil,
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyText",
      :initial_quantity => 1.5,
      :available_quantity => 1.5,
      :source => "MyString",
      :volunteer_id => 1,
      :contact_number => "MyString",
      :contact_name => "MyString"
    ))
  end

  it "renders the edit inventory form" do
    render

    assert_select "form[action=?][method=?]", inventory_path(@inventory), "post" do

      assert_select "input[name=?]", "inventory[item_category_id]"

      assert_select "input[name=?]", "inventory[item_type_id]"

      assert_select "input[name=?]", "inventory[item_sub_type_id]"

      assert_select "input[name=?]", "inventory[item_unit_id]"

      assert_select "input[name=?]", "inventory[quantity]"

      assert_select "input[name=?]", "inventory[area_id]"

      assert_select "input[name=?]", "inventory[latitude]"

      assert_select "input[name=?]", "inventory[longitude]"

      assert_select "textarea[name=?]", "inventory[address]"

      assert_select "input[name=?]", "inventory[initial_quantity]"

      assert_select "input[name=?]", "inventory[available_quantity]"

      assert_select "input[name=?]", "inventory[source]"

      assert_select "input[name=?]", "inventory[volunteer_id]"

      assert_select "input[name=?]", "inventory[contact_number]"

      assert_select "input[name=?]", "inventory[contact_name]"
    end
  end
end
