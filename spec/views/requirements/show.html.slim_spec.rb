require 'rails_helper'

RSpec.describe "requirements/show", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :relief_camp => nil,
      :location => nil,
      :area => nil,
      :user => nil,
      :requester => "Requester",
      :request_mode => "Request Mode",
      :priority => "Priority"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Requester/)
    expect(rendered).to match(/Request Mode/)
    expect(rendered).to match(/Priority/)
  end
end
