require 'rails_helper'

RSpec.describe "item_units/show", type: :view do
  before(:each) do
    @item_unit = assign(:item_unit, ItemUnit.create!(
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
