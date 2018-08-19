require 'rails_helper'

RSpec.describe "requirements/new", type: :view do
  before(:each) do
    assign(:requirement, Requirement.new(
      :relief_camp => nil,
      :location => nil,
      :area => nil,
      :user => nil,
      :requester => "MyString",
      :request_mode => "MyString",
      :priority => "MyString"
    ))
  end

  it "renders new requirement form" do
    render

    assert_select "form[action=?][method=?]", requirements_path, "post" do

      assert_select "input[name=?]", "requirement[relief_camp_id]"

      assert_select "input[name=?]", "requirement[location_id]"

      assert_select "input[name=?]", "requirement[area_id]"

      assert_select "input[name=?]", "requirement[user_id]"

      assert_select "input[name=?]", "requirement[requester]"

      assert_select "input[name=?]", "requirement[request_mode]"

      assert_select "input[name=?]", "requirement[priority]"
    end
  end
end
