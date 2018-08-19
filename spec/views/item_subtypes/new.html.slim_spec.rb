require 'rails_helper'

RSpec.describe "item_subtypes/new", type: :view do
  before(:each) do
    assign(:item_subtype, ItemSubtype.new(
      :name => "MyString",
      :code => "MyString",
      :item_type => nil
    ))
  end

  it "renders new item_subtype form" do
    render

    assert_select "form[action=?][method=?]", item_subtypes_path, "post" do

      assert_select "input[name=?]", "item_subtype[name]"

      assert_select "input[name=?]", "item_subtype[code]"

      assert_select "input[name=?]", "item_subtype[item_type_id]"
    end
  end
end
