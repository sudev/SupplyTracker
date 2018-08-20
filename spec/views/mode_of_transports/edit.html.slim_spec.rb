require 'rails_helper'

RSpec.describe "mode_of_transports/edit", type: :view do
  before(:each) do
    @mode_of_transport = assign(:mode_of_transport, ModeOfTransport.create!(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit mode_of_transport form" do
    render

    assert_select "form[action=?][method=?]", mode_of_transport_path(@mode_of_transport), "post" do

      assert_select "input[name=?]", "mode_of_transport[name]"

      assert_select "input[name=?]", "mode_of_transport[code]"
    end
  end
end
