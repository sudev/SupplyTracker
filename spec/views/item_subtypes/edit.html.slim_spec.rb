require 'rails_helper'

RSpec.describe "item_subtypes/edit", type: :view do
  before(:each) do
    @item_subtype = assign(:item_subtype, ItemSubtype.create!(
      :name => "MyString",
      :code => "MyString",
      :item_type => nil
    ))
  end

  it "renders the edit item_subtype form" do
    render

    assert_select "form[action=?][method=?]", item_subtype_path(@item_subtype), "post" do

      assert_select "input[name=?]", "item_subtype[name]"

      assert_select "input[name=?]", "item_subtype[code]"

      assert_select "input[name=?]", "item_subtype[item_type_id]"
    end
  end
end
