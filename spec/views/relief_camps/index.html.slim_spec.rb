require 'rails_helper'

RSpec.describe "relief_camps/index", type: :view do
  before(:each) do
    @district = assign(:district, District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"))
    assign(:relief_camps, [
        ReliefCamp.create!(name: "Lisieux School", district_id: @district.id),
        ReliefCamp.create!(name: "Warwin School", district_id: @district.id),
    ])
  end

  it "renders a list of relief_camps" do
    render
  end
end
