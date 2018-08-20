require 'rails_helper'

RSpec.describe "item_conditions/edit", type: :view do
  before(:each) do
    @item_condition = assign(:item_condition, ItemCondition.create!(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit item_condition form" do
    render

    assert_select "form[action=?][method=?]", item_condition_path(@item_condition), "post" do

      assert_select "input[name=?]", "item_condition[name]"

      assert_select "input[name=?]", "item_condition[code]"
    end
  end
end
