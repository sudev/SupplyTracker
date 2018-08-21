require 'rails_helper'

RSpec.describe "goods_commitments/new", type: :view do
  before(:each) do
    assign(:goods_commitment, GoodsCommitment.new())
  end

  it "renders new goods_commitment form" do
    render

    assert_select "form[action=?][method=?]", goods_commitments_path, "post" do
    end
  end
end
