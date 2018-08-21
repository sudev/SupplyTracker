require 'rails_helper'

RSpec.describe "districts/index", type: :view do
  before(:each) do
    assign(:districts, [
        District.create!(name: "Kottayam", code: "KTM", local_name:"കോട്ടയം"),
        District.create!(name: "Ernakulam", code: "EKM", local_name:"എറണാകുളം")
    ])
  end

  it "renders a list of districts" do
    render
  end
end
