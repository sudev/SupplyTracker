require 'rails_helper'

RSpec.describe "item_subtypes/show", type: :view do
  before(:each) do
    @item_subtype = assign(:item_subtype, ItemSubtype.create!(
      :name => "Name",
      :code => "Code",
      :item_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(//)
  end
end
