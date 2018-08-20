require 'rails_helper'

RSpec.describe "requirements/index", type: :view do
  before(:each) do
    assign(:requirements, [
      Requirement.create!(
        :relief_camp => nil,
        :location => nil,
        :area => nil,
        :user => nil,
        :requester => "Requester",
        :request_mode => "Request Mode",
        :priority => "Priority"
      ),
      Requirement.create!(
        :relief_camp => nil,
        :location => nil,
        :area => nil,
        :user => nil,
        :requester => "Requester",
        :request_mode => "Request Mode",
        :priority => "Priority"
      )
    ])
  end

  it "renders a list of requirements" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Requester".to_s, :count => 2
    assert_select "tr>td", :text => "Request Mode".to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
  end
end
