require 'rails_helper'

RSpec.describe "shipped_items/index", type: :view do
  before(:each) do
    assign(:shipped_items, [
      ShippedItem.create!(
        :requirement => nil,
        :item_category => nil,
        :item_type => nil,
        :item_sub_type => nil,
        :item_unit => nil,
        :quantity => 2.5,
        :remark => "Remark",
        :source => nil,
        :destination => "",
        :relief_camp => nil,
        :mode_of_transport => "Mode Of Transport",
        :current_location => nil
      ),
      ShippedItem.create!(
        :requirement => nil,
        :item_category => nil,
        :item_type => nil,
        :item_sub_type => nil,
        :item_unit => nil,
        :quantity => 2.5,
        :remark => "Remark",
        :source => nil,
        :destination => "",
        :relief_camp => nil,
        :mode_of_transport => "Mode Of Transport",
        :current_location => nil
      )
    ])
  end

  it "renders a list of shipped_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Remark".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Mode Of Transport".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
