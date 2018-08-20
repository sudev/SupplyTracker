require 'rails_helper'

RSpec.describe "required_items/show", type: :view do
  before(:each) do
    @required_item = assign(:required_item, RequiredItem.create!(
      :requirement => nil,
      :item_category => nil,
      :item_type => nil,
      :item_sub_type => nil,
      :item_unit => nil,
      :item_condition => nil,
      :quantity_requested => 2.5,
      :quantity_provided => 3.5,
      :quantity_needed => 4.5,
      :status => "Status",
      :remark => "Remark"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Remark/)
  end
end
