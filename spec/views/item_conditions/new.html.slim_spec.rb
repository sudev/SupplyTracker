require 'rails_helper'

RSpec.describe "item_conditions/new", type: :view do
  before(:each) do
    assign(:item_condition, ItemCondition.new(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders new item_condition form" do
    render

    assert_select "form[action=?][method=?]", item_conditions_path, "post" do

      assert_select "input[name=?]", "item_condition[name]"

      assert_select "input[name=?]", "item_condition[code]"
    end
  end
end
