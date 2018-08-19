require 'rails_helper'

RSpec.describe "mode_of_transports/index", type: :view do
  before(:each) do
    assign(:mode_of_transports, [
      ModeOfTransport.create!(
        :name => "Name",
        :code => "Code"
      ),
      ModeOfTransport.create!(
        :name => "Name",
        :code => "Code"
      )
    ])
  end

  it "renders a list of mode_of_transports" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
  end
end
