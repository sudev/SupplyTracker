require 'rails_helper'

RSpec.describe "areas/new", type: :view do
  before(:each) do
    assign(:area, Area.new(
      :name => "MyString",
      :code => "MyString",
      :area => nil
    ))
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do

      assert_select "input[name=?]", "area[name]"

      assert_select "input[name=?]", "area[code]"

      assert_select "input[name=?]", "area[area_id]"
    end
  end
end
