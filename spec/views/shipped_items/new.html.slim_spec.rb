require 'rails_helper'

RSpec.describe "shipped_items/new", type: :view do
  before(:each) do
    assign(:shipped_item, ShippedItem.new(
      :requirement => nil,
      :item_category => nil,
      :item_type => nil,
      :item_subtype => nil,
      :item_unit => nil,
      :quantity => 1.5,
      :remark => "MyString",
      :source => nil,
      :destination => nil,
      :relief_camp => nil,
      :mode_of_transport => "MyString",
      :current_location => nil
    ))
  end

  it "renders new shipped_item form" do
    render

    assert_select "form[action=?][method=?]", shipped_items_path, "post" do

      assert_select "input[name=?]", "shipped_item[requirement_id]"

      assert_select "input[name=?]", "shipped_item[item_category_id]"

      assert_select "input[name=?]", "shipped_item[item_type_id]"

      assert_select "input[name=?]", "shipped_item[item_subtype_id]"

      assert_select "input[name=?]", "shipped_item[item_unit_id]"

      assert_select "input[name=?]", "shipped_item[quantity]"

      assert_select "input[name=?]", "shipped_item[remark]"

      assert_select "input[name=?]", "shipped_item[source_id]"

      assert_select "input[name=?]", "shipped_item[destination_id]"

      assert_select "input[name=?]", "shipped_item[relief_camp_id]"

      assert_select "input[name=?]", "shipped_item[mode_of_transport]"

      assert_select "input[name=?]", "shipped_item[current_location_id]"
    end
  end
end
