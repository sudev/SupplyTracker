require 'rails_helper'

RSpec.describe "item_categories/show", type: :view do
  before(:each) do
    @item_category = assign(:item_category, ItemCategory.create!(
      :name => "Name",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
  end
end
