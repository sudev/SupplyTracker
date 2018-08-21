require 'rails_helper'

RSpec.describe "goods_commitments/edit", type: :view do
  before(:each) do
    @goods_commitment = assign(:goods_commitment, GoodsCommitment.create!())
  end

  it "renders the edit goods_commitment form" do
    render

    assert_select "form[action=?][method=?]", goods_commitment_path(@goods_commitment), "post" do
    end
  end
end
