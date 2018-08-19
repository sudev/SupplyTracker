require 'rails_helper'

RSpec.describe "required_items/new", type: :view do
  before(:each) do
    assign(:required_item, RequiredItem.new(
      :requirement => nil,
      :item_category => nil,
      :item_type => nil,
      :item_sub_type => nil,
      :item_unit => nil,
      :item_condition => nil,
      :quantity_requested => 1.5,
      :quantity_provided => 1.5,
      :quantity_needed => 1.5,
      :status => "MyString",
      :remark => "MyString"
    ))
  end

  it "renders new required_item form" do
    render

    assert_select "form[action=?][method=?]", required_items_path, "post" do

      assert_select "input[name=?]", "required_item[requirement_id]"

      assert_select "input[name=?]", "required_item[item_category_id]"

      assert_select "input[name=?]", "required_item[item_type_id]"

      assert_select "input[name=?]", "required_item[item_sub_type_id]"

      assert_select "input[name=?]", "required_item[item_unit_id]"

      assert_select "input[name=?]", "required_item[item_condition_id]"

      assert_select "input[name=?]", "required_item[quantity_requested]"

      assert_select "input[name=?]", "required_item[quantity_provided]"

      assert_select "input[name=?]", "required_item[quantity_needed]"

      assert_select "input[name=?]", "required_item[status]"

      assert_select "input[name=?]", "required_item[remark]"
    end
  end
end
