require 'rails_helper'

RSpec.describe "requirements/edit", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :relief_camp => nil,
      :area => nil,
      :user => nil,
      :requester => "MyString",
      :request_mode => "MyString",
      :priority => "MyString"
    ))
  end

  it "renders the edit requirement form" do
    render

    assert_select "form[action=?][method=?]", requirement_path(@requirement), "post" do

      assert_select "input[name=?]", "requirement[relief_camp_id]"

      assert_select "input[name=?]", "requirement[area_id]"

      assert_select "input[name=?]", "requirement[user_id]"

      assert_select "input[name=?]", "requirement[requester]"

      assert_select "input[name=?]", "requirement[request_mode]"

      assert_select "input[name=?]", "requirement[priority]"
    end
  end
end
