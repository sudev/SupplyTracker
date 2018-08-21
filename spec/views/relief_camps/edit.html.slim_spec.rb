require 'rails_helper'

RSpec.describe "relief_camps/edit", type: :view do
  before(:each) do
    @district = assign(:district, District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"))
    @relief_camp = assign(:relief_camp, ReliefCamp.create!(name: "Lisieux School", district_id: @district.id))
  end

  it "renders the edit relief_camp form" do
    render

    assert_select "form[action=?][method=?]", relief_camp_path(@relief_camp), "post" do
    end
  end
end
