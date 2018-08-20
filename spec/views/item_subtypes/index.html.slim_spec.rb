require 'rails_helper'

RSpec.describe "item_subtypes/index", type: :view do
  before(:each) do
    assign(:item_subtypes, [
      ItemSubtype.create!(
        :name => "Name",
        :code => "Code",
        :item_type => nil
      ),
      ItemSubtype.create!(
        :name => "Name",
        :code => "Code",
        :item_type => nil
      )
    ])
  end

  it "renders a list of item_subtypes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
