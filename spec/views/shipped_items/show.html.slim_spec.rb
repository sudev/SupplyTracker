require 'rails_helper'

RSpec.describe "shipped_items/show", type: :view do
  before(:each) do
    @shipped_item = assign(:shipped_item, ShippedItem.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Remark/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Mode Of Transport/)
    expect(rendered).to match(//)
  end
end
