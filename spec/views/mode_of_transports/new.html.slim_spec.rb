require 'rails_helper'

RSpec.describe "mode_of_transports/new", type: :view do
  before(:each) do
    assign(:mode_of_transport, ModeOfTransport.new(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders new mode_of_transport form" do
    render

    assert_select "form[action=?][method=?]", mode_of_transports_path, "post" do

      assert_select "input[name=?]", "mode_of_transport[name]"

      assert_select "input[name=?]", "mode_of_transport[code]"
    end
  end
end
