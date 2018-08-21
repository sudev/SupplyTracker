require 'rails_helper'

RSpec.describe "relief_camps/show", type: :view do
  before(:each) do
    @district = assign(:district, District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"))
    @relief_camp = assign(:relief_camp, ReliefCamp.create!(name: "Lisieux School", district_id: @district.id))
  end

  it "renders attributes in <p>" do
    render
  end
end
