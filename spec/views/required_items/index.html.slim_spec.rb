require 'rails_helper'

RSpec.describe "required_items/index", type: :view do
  before(:each) do
    assign(:required_items, [
      RequiredItem.create!(
        :requirement => nil,
        :item_category => nil,
        :item_type => nil,
        :item_subtype => nil,
        :item_unit => nil,
        :item_condition => nil,
        :quantity_requested => 2.5,
        :quantity_provided => 3.5,
        :quantity_needed => 4.5,
        :status => "Status",
        :remark => "Remark"
      ),
      RequiredItem.create!(
        :requirement => nil,
        :item_category => nil,
        :item_type => nil,
        :item_subtype => nil,
        :item_unit => nil,
        :item_condition => nil,
        :quantity_requested => 2.5,
        :quantity_provided => 3.5,
        :quantity_needed => 4.5,
        :status => "Status",
        :remark => "Remark"
      )
    ])
  end

  it "renders a list of required_items" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Remark".to_s, :count => 2
  end
end
