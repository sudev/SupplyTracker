require 'rails_helper'

RSpec.describe "relief_camps/new", type: :view do
  before(:each) do
    @district = assign(:district, District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"))
    assign(:relief_camp, ReliefCamp.new(name: "Lisieux School", district_id: @district.id))
  end

  it "renders new relief_camp form" do
    render

    assert_select "form[action=?][method=?]", relief_camps_path, "post" do
    end
  end
end
