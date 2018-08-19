require 'rails_helper'

RSpec.describe "mode_of_transports/show", type: :view do
  before(:each) do
    @mode_of_transport = assign(:mode_of_transport, ModeOfTransport.create!(
      :name => "Name",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
  end
end
