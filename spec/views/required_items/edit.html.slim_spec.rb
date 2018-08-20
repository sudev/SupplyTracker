require 'rails_helper'

RSpec.describe "required_items/edit", type: :view do
  before(:each) do
    @required_item = assign(:required_item, RequiredItem.create!(
      :requirement => nil,
      :item_category => nil,
      :item_type => nil,
      :item_subtype => nil,
      :item_unit => nil,
      :item_condition => nil,
      :quantity_requested => 1.5,
      :quantity_provided => 1.5,
      :quantity_needed => 1.5,
      :status => "MyString",
      :remark => "MyString"
    ))
  end

  it "renders the edit required_item form" do
    render

    assert_select "form[action=?][method=?]", required_item_path(@required_item), "post" do

      assert_select "input[name=?]", "required_item[requirement_id]"

      assert_select "input[name=?]", "required_item[item_category_id]"

      assert_select "input[name=?]", "required_item[item_type_id]"

      assert_select "input[name=?]", "required_item[item_subtype_id]"

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
